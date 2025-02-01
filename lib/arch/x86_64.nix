{ lib }:

let
  inherit (lib)
    bitShiftRight
    chars
    join
    mod
    optional
    padBytesRight
  ;
  inherit (lib.arch.x86_64)
    registers
    prefix
  ;

  # Binary numbers
  b0100_0000 =  64; # 0x40
  b1100_0000 = 192; # 0xC0

  synonymousArches =
    [
      "x86-64"
      "amd64"
    ]
  ;
  # Help out users in some situations with slightly wrong names being used.
  architectureHints =
    builtins.listToAttrs (
      builtins.map (
        name:
        {
          inherit name;
          value = builtins.throw "architecture '${name}' is named 'x86_64'.";
        }
      ) synonymousArches
    )
  ;
in
{
  arch = architectureHints // {
    x86_64 = {
      name = "x86_64";

      # https://wiki.osdev.org/X86-64_Instruction_Encoding#Registers
      # NOTE: these valures are not necessarily sufficient to encode in opcode operands.
      # NOTE: extended registers may require using the R or B REX flags.
      registers =
        let
          bits = [ 8 16 32 64 ];
          at = builtins.elemAt;
          # The four following lists are combined to form register names.
          _classic_8A  = chars "acdbacdb";
          _classic_8L  = chars "llllhhhh";
          _classic_16A = chars "acdbsbsd";
          _classic_16L = chars "xxxxppii";
          # The classic 8 bit registers can't neatly be named like the following ones.
          _classic_8 =
            builtins.genList
            (i: rec {
              name = "${at _classic_8A i}${at _classic_8L i}";
              value = {
                reg      = i;
                extended = false;
                offset   = i;
              };
            }) 8
          ;
          # The 32 and 64 bit variant are prefixed.
          _classic_16P = [ (throw "(shouldn't happen)") "" "e" "r" ];
          _classic_16 =
            width:
            builtins.genList
            (i: rec {
              name = "${at _classic_16P width}${at _classic_16A i}${at _classic_16L i}";
              value = {
                width    = at bits width;
                reg      = i;
                extended = false;
                offset   = i;
              };
            }) 8
          ;
          # The 8, 16 and 32 bit variants are suffixed.
          _extended_S = [ "b" "w" "d" "" ];
          _extended =
            width:
            builtins.genList (i: rec {
              name = "r${toString (value.reg)}${at _extended_S width}";
              value = {
                width    = at bits width;
                reg      = i + 8;
                extended = true;
                offset   = i;
              };
            }) 8
          ;
        in
        builtins.listToAttrs (
          builtins.concatLists [
            (_classic_8)
            (_classic_16 1) # 16 bit
            (_classic_16 2) # 32 bit
            (_classic_16 3) # 64 bit
            (_extended   0) #  8 bit
            (_extended   1) # 16 bit
            (_extended   2) # 32 bit
            (_extended   3) # 64 bit
          ]
        )
      ;
      prefix = {
        REX =
          flags:
          let
            # Values
            flagValues = {
              W = 8; # 0b1000 → 64 bit operands
              R = 4; # 0b0100 → source **register**
              X = 2; # 0b0010 → ...
              B = 1; # 0b0001 → **base**(?) register
            };
            valueList =
              builtins.map (
                char:
                flagValues."${char}"
                or (throw "REX flags invalid (used: '${flags}') the '${char}' flag was the first invalid one.")
              ) (chars flags)
            ;
          in
          b0100_0000 + (
            builtins.foldl' (a: b: a + b) 0 (valueList)
          )
        ;
      };
      instructions =
        let
          MODRM = {
            mod = {
              direct = b1100_0000;
            };
          };
        in
        {
          MOV_reg =
            into: from:
            let
              into' = registers."${into}";
              from' = registers."${from}";
              rex_flags = []
                ++ (optional (into'.width == 64) "W")
                ++ (optional (into'.extended)    "B")
                ++ (optional (from'.extended)    "R")
              ;
              rex_value =
                prefix.REX (join rex_flags)
              ;
              operand =
                (MODRM.mod.direct)
                + (into'.offset)
                + (from'.offset * 8)
              ;
            in
            if into'.width != from'.width
            then throw "'MOV_reg ${into},${from} ...' used with different size operands (${toString into'.width},${toString from'.width})"
            else
            (optional (rex_value != b0100_0000) rex_value)
            ++ [ 137 ] # 0x89
            ++ [ operand ]
          ;

          # B8+
          MOV_imm =
            reg: value:
            let
              reg' = registers."${reg}";
              rex_flags = []
                ++ (optional (reg'.width == 64) "W")
                ++ (optional (reg'.extended)    "R")
              ;
              rex_value =
                prefix.REX (join rex_flags)
              ;
              regLength = bitShiftRight reg'.width (4-1);
              valueLength = lib.bytesCount value;
            in
            if valueLength > regLength
            then throw "'MOV_imm ${reg} ...' used with immediate value too large. Expected at most ${toString regLength} bytes, got ${toString valueLength}"
            else
            (optional (rex_value != b0100_0000) rex_value)
            ++ [ (184 + (reg'.offset)) ]
            ++ (padBytesRight regLength value)
          ;

          # 0F  05
          syscall   = [ 15 5 ];
        }
      ;
    };
  };
}
