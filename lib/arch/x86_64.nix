{ lib }:

let
  inherit (lib)
    bitShiftRight
    chars
    join
    mod
    numberToBytes
    optional
    optionals
    padBytesRight
  ;
  inherit (lib.arch.x86_64)
    registers
    prefix
  ;

  # Binary numbers
  b0100_0000 =  64; # 0x40
  b1100_0000 = 192; # 0xC0
  b100 = 4;
  b101 = 5;
  b110 = 6;
  b111 = 7;

  synonymousArches =
    [
      "x86-64"
      "amd64"
    ]
  ;

  # The power of two length of an operand, in bytes.
  # NOTE: implementation is not great, but works.
  operandWidth =
    value:
    let
      bytesCount = lib.bytesCount (numberToBytes value);
    in
    # NOTE: Nix currently doesn't handle integer types bigger than 64 bit...
    #       We are cheating a bit here by assuming this.
    if bytesCount >= 8 then 8 else
    if bytesCount >= 4 then 4 else
    if bytesCount >= 2 then 2 else
    1
  ;
in
{
  arch = {
    x86_64 = {
      name = "x86_64";
      inherit synonymousArches;

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
                width    = 8;
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
          self = (builtins.listToAttrs (
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
          )) // {
            spl = self.ah;
            bpl = self.ch;
            sil = self.dh;
            dil = self.bh;
          };
        in
        self
      ;
      prefix = {
        # Table 2-4. REX Prefix Fields [BITS: 0100WRXB]
        REX =
          flags:
          let
            # Values
            flagValues = {
              W = 8; # 0b1000 → 64 bit operands
              R = 4; # 0b0100 → Extension of the **ModR/M reg field**
              X = 2; # 0b0010 → Extension of the SIB index field
              B = 1; # 0b0001 → Extension of the **ModR/M r/m field**, SIB base field, or Opcode reg field
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
      MODRM = {
        mod = {
          indirect = 0; # For pedantic completeness; [r/m]
          # NOTE: 01 and 10 not supported yet.
          direct   = b1100_0000; # r/m
        };
      };
      instructions =
        let
          inherit (lib.arch.x86_64)
            MODRM
          ;
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
              operand = [(
                (MODRM.mod.direct)
                + (into'.offset)
                + (from'.offset * 8)
              )];
              opcode = [(
                if into'.width == 8
                then 136 # 0x88
                else 137 # 0x89
              )];
              opcode_prefix =
                if into'.width == 16 then [ 102 /* 0x66 */ ] else
                []
              ;
            in
            if into'.width != from'.width
            then throw "'MOV_reg ${into},${from} ...' used with different size operands (${toString into'.width},${toString from'.width})"
            else []
            ++ opcode_prefix
            ++ (optional (rex_value != b0100_0000) rex_value)
            ++ opcode
            ++ operand
          ;

          MOV_imm =
            reg: value:
            let
              reg' = registers."${reg}";
              rex_flags = []
                ++ (optional (reg'.width == 64) "W")
                ++ (optional (reg'.extended)    "B")
              ;
              rex_value =
                prefix.REX (join rex_flags)
              ;
              regLength = bitShiftRight reg'.width (4-1);
              valueLength = lib.bytesCount value;
              opcode = [(
                if reg'.width == 8
                then (176 + reg'.offset) # 0xB0
                else (184 + reg'.offset) # 0xB8
              )];
              opcode_prefix =
                if reg'.width == 16 then [ 102 /* 0x66 */ ] else
                []
              ;
            in
            if valueLength > regLength
            then throw "'MOV_imm ${reg} ...' used with immediate value too large. Expected at most ${toString regLength} bytes, got ${toString valueLength}"
            else []
            ++ opcode_prefix
            ++ (optional (rex_value != b0100_0000) rex_value)
            ++ opcode
            ++ (padBytesRight regLength value)
          ;

          MOV_from_mem =
            into: from:
            let
              into' = registers."${into}";
              from' = registers."${from}";
              rex_flags = []
                ++ (optional (into'.width == 64) "W")
                ++ (optional (from'.extended)    "B")
                ++ (optional (into'.extended)    "R")
              ;
              rex_value =
                prefix.REX (join rex_flags)
              ;
              opcode = [(
                if into'.width == 8
                then 138 # 0x8A
                else 139 # 0x8B
              )];
              operand =
                (
                  if from'.offset == b101
                  then (lib.bitShiftLeft 1 6) # 01.___.___
                  else MODRM.mod.indirect     # 00.___.___
                )
                + (into'.offset * 8)
                + (from'.offset)
              ;
              additional_byte =
                if from'.offset == b100
                then [ 36 ] # SIB to 00.100.100; 0x24
                else
                  if from'.offset == b101 # RBP/R13
                  then [ 0 ] # Displacement of zero
                  else null
              ;
            in

            if into'.width != 64
              then (throw "FIXME: MOV_from_mem only implements 64 bit operands at the moment.") else
            if into'.width != from'.width
              then (throw "'MOV_from_mem ${into},${from} ...' used with different size operands (${toString into'.width},${toString from'.width})") else

            (optional (rex_value != b0100_0000) rex_value)
            ++ opcode
            ++ [ operand ]
            ++ (optionals (additional_byte != null) additional_byte)
          ;

          # 0F  05
          syscall   = [ 15 5 ];

          #
          # Control flow
          #

          # Comparison
          CMP_imm =
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
              regLength =
                let val = bitShiftRight reg'.width (4-1); in
                # Fixup for imm32 on 64 bit registers
                if val == 8 then 4 else val
              ;
              valueLength = lib.bytesCount value;
              opcodeOffset = if reg'.width == 8 then 0 else 1;
              operand =
                (MODRM.mod.direct)
                + (b111 * 8) # /7
                + (reg'.offset)
              ;
            in
            if valueLength > regLength
            then throw "'CMP_imm ${reg} ...' used with immediate value too large. Expected at most ${toString regLength} bytes, got ${toString valueLength}"
            else
            (optional (rex_value != b0100_0000) rex_value)
            # NOTE: no imm64!!!!
            ++ [ (128 + opcodeOffset) ] # 0x80
            ++ [ operand ]
            ++ (padBytesRight regLength value)
          ;

          ADD_imm =
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
              regLength =
                let val = bitShiftRight reg'.width (4-1); in
                # Fixup for imm32 on 64 bit registers
                if val == 8 then 4 else val
              ;
              valueLength = lib.bytesCount value;
              opcodeOffset = if reg'.width == 8 then 0 else 1;
              operand =
                (MODRM.mod.direct)
                + (0 * 8) # /0
                + (reg'.offset)
              ;
            in
            if valueLength > regLength
            then throw "'ADD_imm ${reg} ...' used with immediate value too large. Expected at most ${toString regLength} bytes, got ${toString valueLength}"
            else
            (optional (rex_value != b0100_0000) rex_value)
            ++ [ (128 + opcodeOffset) ] # 0x80
            ++ [ operand ]
            ++ (padBytesRight regLength value)
          ;

          # Jump if equal; All are relative jumps.
          # (Conditional absolute jumps are not a thing in x86)
          JE = 
            value:
            let
              byteWidth = operandWidth value;
              operandLength = 4;
            in
            [(lib.comment "x86_64: JE ${toString value}")] ++
            (
            if byteWidth <= 32
            then (
              [ 15 132 ] # 0x0f 0x84; JE rel32
              ++ (padBytesRight operandLength (numberToBytes (value - operandLength)))
            )
            else
              throw "64 bit operands not supported for JE."
            )
          ;

          # Jump if not equal; All are relative jumps.
          # (Conditional absolute jumps are not a thing in x86)
          JNE = 
            value:
            let
              byteWidth = operandWidth value;
              operandLength = 4;
            in
            [(lib.comment "x86_64: JNE ${toString value}")] ++
            (
            if byteWidth < 32
            then (
              [ 15 133 ] # 0x0f 0x85; JNE rel32
              ++ (padBytesRight operandLength (numberToBytes (value - operandLength)))
            )
            else
              throw "64 bit operands not supported for JNE."
            )
          ;
        }
      ;
    };
  };
}
