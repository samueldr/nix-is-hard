{ lib }:

let
  inherit (lib)
    optional
    optionals
  ;
  self = lib.arch.aarch64;
  inherit (self)
    registers
    instructionToBytes
  ;
in
{
  arch = {
    aarch64 = {
      name = "aarch64";
      synonymousArches = [ "arm64" ];

      ELF = {
        EM = lib.ELF.constants.EM_AARCH64;
        bits = 64;
      };

      # Transforms the 32 bit unsigned value representing an instruction into its bytes constituents
      instructionToBytes =
        # Let's borrow this handy function
        lib.ctypes.toUint32
      ;

      # The 32 AArch64 registers
      registers =
        let
          prefixWidth = { x = 64; w = 32; };
          attrsFor =
            offset: prefix:
            rec {
              name =
                if offset == 31
                then if prefix == "r" then "rsp" else "${prefix}zr"
                else "${prefix}${toString offset}"
              ;
              value = {
                inherit name;
                inherit offset;
                width = prefixWidth."${prefix}";
                is32 = value.width == 32;
                is64 = value.width == 64;
              };
            }
          ;
        in
        builtins.listToAttrs (
          builtins.concatLists (
            (builtins.genList (offset:
              builtins.map (attrsFor offset) (builtins.attrNames prefixWidth)
            ) 31)
          ) ++ [ (attrsFor 31 "r") (attrsFor 31 "w") (attrsFor 31 "x") ]
        )
      ;

      instructions = {
        NOP =
          [ (lib.comment "aarch64: NOP") 31 32 3 213 ]
        ;

        syscall =
          [ (lib.comment "aarch64: syscall (svc 0)") 1 0 0 212 ]
        ;

        MOV_imm =
          # `reg` is the destination register name
          # `value` is either the numeric representation or the list of bytes to place in destination `reg`.
          reg: value:
          let value' = value; in # break infrec
          let
            value =
              if builtins.isInt value' then value' else
              if builtins.isList value' then (lib.bytesUnsignedToNumber value') else
              (throw "MOV_imm called with value of unexpected type (${builtins.typeOf value'}); expected integer or list.")
            ;
          in
          let
            reg' = registers."${reg}";
            valueBytes = lib.ctypes.toUint64 value;
            oneInstruction =
              value: shift:
              let
                imm16 =
                  builtins.bitAnd
                  (lib.b11111111_11111111)
                  (lib.bitShiftRight value (16*shift));
              in
              builtins.foldl' builtins.add 0 ([]
                ++ optional reg'.is64 lib.b10000000_00000000_00000000_00000000   # bit[31] (sf)
                ++ [
                  (
                    # Zero register with first move.
                    if shift == 0
                    then (1384120320)                                            # bit[23:30] 10100101 MOVZ
                    else (1920991232)                                            # bit[23:30] 11100101 MOVK
                  )
                  (lib.bitShiftLeft shift 21)                                    # bit[21:22] (hw)
                  (lib.bitShiftLeft imm16 5)                                     # bit[5:20]  (imm16)
                  (reg'.offset)                                                  # bit[0:4]   (Rd)
                ]
              )
            ;
          in
          [ (lib.comment "aarch64: MOV_imm ${reg} ${toString value}") ]
          # The different MOV instructions are hard.
          # Let's make this simple, and always do the pedantic movk/movz grouping.
          # We *could* (later) optimize this and skip imm16 parts, past the first, that are zero.
          ++ (instructionToBytes (oneInstruction value 0))
          ++ (instructionToBytes (oneInstruction value 1))
          ++ optionals (reg'.is64) (instructionToBytes (oneInstruction value 2))
          ++ optionals (reg'.is64) (instructionToBytes (oneInstruction value 3))
        ;
      };
    };
  };
}
