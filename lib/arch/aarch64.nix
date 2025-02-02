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

        MOV_reg =
          # NOTE: MOV operations are aliases of ORR.
          #
          #        ╒══════╤══════╤══════╤══════╤══════╤══════╤══════╤══════╦══════╤══════╤══════╤══════╤══════╤══════╤══════╤══════╕
          # ╒══════╡  31  │  30  │  29  │  28  │  27  │  26  │  25  │  24  ║  23  │  22  │  21  │  20  │  19  │  18  │  17  │  16  │
          # │ ORRsr│░░░░░░│   0  │   1  │   0  │   1  │   0  │   1  │   0  ║   0  │   0  │   0  │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
          # ╘══════╡  sf  │  opc                                           ║  shift      │   N  │  Rm (source)                     │
          #        ├──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────╥──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┤
          # ╒══════╡  15  │  14  │  13  │  12  │  11  │  10  │   9  │   8  ║   7  │   6  │   5  │   4  │   3  │   2  │   1  │   0  │
          # │ ORRsr│   0  │   0  │   0  │   0  │   0  │   0  │   1  │   1  ║   1  │   1  │   1  │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
          # ╘══════╡  imm6                                   │  Rn                              │  Rd (destination)                │
          #        ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╛
          #         See: https://developer.arm.com/documentation/ddi0602/2024-12/Base-Instructions/MOV--register---Move-register-value--an-alias-of-ORR--shifted-register--
          #         See: https://developer.arm.com/documentation/ddi0602/2024-12/Base-Instructions/ORR--shifted-register---Bitwise-OR--shifted-register--
          #         AKA: ORR_64_log_shift
          #         AKA: ORR_32_log_shift
          #         Encoded operation: 10101010xx0xxxxxxxxxxxxxxxxxxxxx
          #
          #        ╒══════╤══════╤══════╤══════╤══════╤══════╤══════╤══════╦══════╤══════╤══════╤══════╤══════╤══════╤══════╤══════╕
          # ╒══════╡  31  │  30  │  29  │  28  │  27  │  26  │  25  │  24  ║  23  │  22  │  21  │  20  │  19  │  18  │  17  │  16  │
          # │ ADDim│░░░░░░│   0  │   0  │   1  │   0  │   0  │   0  │   1  ║   0  │   0  │   0  │   0  │   0  │   0  │   0  │   0  │
          # ╘══════╡  sf  │  op  │   S  │                                         │  sh  │  imm12                              ... │
          #        ├──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────╥──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┤
          # ╒══════╡  15  │  14  │  13  │  12  │  11  │  10  │   9  │   8  ║   7  │   6  │   5  │   4  │   3  │   2  │   1  │   0  │
          # │ ADDim│   0  │   0  │   0  │   0  │   0  │   0  │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
          # ╘══════╡ ... imm12                               │  Rn (source)                     │  Rd (destination)                │
          #        ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╛
          #         See: https://developer.arm.com/documentation/ddi0602/2024-12/Base-Instructions/MOV--to-from-SP---Move-register-value-to-or-from-SP--an-alias-of-ADD--immediate--
          #         See: https://developer.arm.com/documentation/ddi0602/2024-12/Base-Instructions/ADD--immediate---Add-immediate-value-
          #         AKA: ADD_64_addsub_imm
          #         AKA: ADD_32_addsub_imm
          #         Encoded operation: 100100010xxxxxxxxxxxxxxxxxxxxxxx
          #
          #
          # NOTE: ORR (shifted register) cannot operate on SP.
          #       The convention is to use ADD (immediate) when dealing with SP.
          #
          # `dest` is the destination register name.
          # `src` is the source register name.
          dest: src:
          let
            dest' = registers."${dest}";
            src' = registers."${src}";
            instruction =
              if src == "sp" || dest == "sp"
              then
                builtins.foldl' builtins.add 0 ([]
                  ++ optional dest'.is64 (lib.bitShiftLeft 1 31)  # bit[31]    (sf)
                  ++ [
                      (lib.bitShiftLeft 34 /* 0b0010_0010 */ 23)  # bit[23:30] (shift)
                      (lib.bitShiftLeft src'.offset 5)            # bit[5:9]   (Rn)
                      (dest'.offset)                              # bit[0:4]   (Rd)
                    ]
                )
              else
                builtins.foldl' builtins.add 0 ([]
                  ++ optional dest'.is64 (lib.bitShiftLeft 1 31)  # bit[31]    (sf)
                  ++ [
                      (lib.bitShiftLeft 42 /* 0b010_1010 */ 24)   # bit[24:30] (shift)
                      (0)                                         # bit[21:23] (shift)
                      (lib.bitShiftLeft src'.offset 16)           # bit[16:20] (Rm)
                      (0)                                         # bit[10:15] (imm6)
                      (lib.bitShiftLeft 31 /* 0b1_1111 */ 5)      # bit[5:9]   (Rn)
                      (dest'.offset)                              # bit[0:4]   (Rd)
                    ]
                )
            ;
          in
          [ (lib.comment "aarch64: MOV_reg ${dest} ${src}") ]
          ++ (instructionToBytes instruction)
        ;

        MOV_imm =
          # NOTE: MOVK and MOVZ are combined to form this synthetic MOV_imm.
          #        ╒══════╤══════╤══════╤══════╤══════╤══════╤══════╤══════╦══════╤══════╤══════╤══════╤══════╤══════╤══════╤══════╕
          # ╒══════╡  31  │  30  │  29  │  28  │  27  │  26  │  25  │  24  ║  23  │  22  │  21  │  20  │  19  │  18  │  17  │  16  │
          # │ MOVZ │░░░░░░│   1  │   0  │   1  │   0  │   0  │   1  │   0  ║   1  │░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
          # │ MOVK │░░░░░░│   1  │   1  │   1  │   0  │   0  │   1  │   0  ║   1  │░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
          # ╘══════╡  sf  │  opc    ^^                                            │  hw         │  imm16                           │
          #        ├──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────╥──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┤
          # ╒══════╡  15  │  14  │  13  │  12  │  11  │  10  │   9  │   8  ║   7  │   6  │   5  │   4  │   3  │   2  │   1  │   0  │
          # │ MOVZ │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
          # │ MOVK │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
          # ╘══════╡  ... imm16                                                                 │  Rd (destination)                │
          #        ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╛
          #         See: https://developer.arm.com/documentation/ddi0602/2024-12/Base-Instructions/MOVZ--Move-wide-with-zero-
          #         See: https://developer.arm.com/documentation/ddi0602/2024-12/Base-Instructions/MOVK--Move-wide-with-keep-
          #
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
                ++ optional reg'.is64 (lib.bitShiftLeft 1 31)  # bit[31]    (sf)
                ++ [
                  (
                    # Zero register with first move.
                    if shift == 0
                    then (1384120320)                          # bit[23:30] 10100101 MOVZ
                    else (1920991232)                          # bit[23:30] 11100101 MOVK
                  )
                  (lib.bitShiftLeft shift 21)                  # bit[21:22] (hw)
                  (lib.bitShiftLeft imm16 5)                   # bit[5:20]  (imm16)
                  (reg'.offset)                                # bit[0:4]   (Rd)
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
