{ lib }:

let
  inherit (lib)
    abs
    mod
    padBytesRight
    numberToBytes
    collapseSpaces
  ;
in

# NOTE: All types are LSB right now.
#       It's fine for the moment.
#       All current and planned relevant platforms are LSB.
#         - x86
#         - x86_64
#         - armv7l
#         - aarch64
#         - riscv64
{
  ctypes = rec {
    mkUint =
      size:
      if size <= 0
      then (throw "mkUint called with a zero or negative bits width (${toString size} <= 0)")
      else
        let bytes_count = size / 8; in
        if (mod size 8) != 0
        then (throw "mkUint called with a non-byte-aligned bits width (${toString size} % 8 != 0)")
        else
          let
            max = 
              (builtins.foldl' builtins.add 0 (builtins.genList (i: lib.bitShiftLeft 1 i) (size)))
            ;
            min = 0;
            # can't check 64 bit values for over/underflow.
            doCheck = size < 64;
          in
            value:
            if doCheck && value > max
            then (throw "Unsigned value ${toString value} is bigger than the signed ${toString size} bits type allows.")
            else
              if doCheck && value < min
              then (throw "Unsigned value ${toString value} is smaller than the signed ${toString size} bits type allows.")
              else
              padBytesRight bytes_count (numberToBytes value)
    ;
    toUint8  = mkUint  8;
    toUint16 = mkUint 16;
    toUint32 = mkUint 32;
    # NOTE: Nix uses signed 64 bit integers. The most significant bit will cause issues when representing large values.
    toUint64 = mkUint 64;

    mkInt =
      #
      # TODO: throw on signed overflow (i.e. putting 128 into an 8 bit signed value)
      #
      # irb(main):019> [127].pack("c").unpack("c")
      # => [127]
      # irb(main):018> [128].pack("c").unpack("c")
      # => [-128]
      # irb(main):022> [-129].pack("c").unpack("c")
      # => [127]
      #
      size:
      if size <= 0
      then (throw "mkInt called with a zero or negative bits width (${toString size} <= 0)")
      else
        let bytes_count = size / 8; in
        if (mod size 8) != 0
        then (throw "mkInt called with a non-byte-aligned bits width (${toString size} % 8 != 0)")
        else
          let
            max = 
              (builtins.foldl' builtins.add 0 (builtins.genList (i: lib.bitShiftLeft 1 i) (size - 1)))
            ;
            min = max * (-1) - 1;
            # can't check 64 bit values for over/underflow.
            doCheck = size < 64;
          in
          value:
          if doCheck && value > max
          then (throw "Signed value ${toString value} is bigger than the signed ${toString size} bits type allows.")
          else
            if doCheck && value < min
            then (throw "Signed value ${toString value} is smaller than the signed ${toString size} bits type allows.")
            else
              if value < 0
              then throw "Negative representation not supported yet."
              else (mkUint size value)
    ;

    toInt8  = mkInt  8;
    toInt16 = mkInt 16;
    toInt32 = mkInt 32;
    toInt64 = mkInt 64;

    # https://en.cppreference.com/w/cpp/language/types#Data_models
    _data_model = {
      _all = {
        # https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/stdint.h.html
        # stdint
        int8_t    = toInt8;
        int16_t   = toInt16;
        int32_t   = toInt32;
        int64_t   = toInt64;
        uint8_t   = toUint8;
        uint16_t  = toUint16;
        uint32_t  = toUint32;
        uint64_t  = toUint64;
      };
      ILP32 = throw "TODO: ILP32 data model";
      LP64 = _data_model._all // {
        "signed char"            = toInt8;
        "unsigned char"          = toUint8;

        "short"                  = toInt16;
        "short int"              = toInt16;
        "signed short"           = toInt16;
        "signed short int"       = toInt16;
        "unsigned short"         = toUint16;
        "unsigned short int"     = toUint16;

        "int"                    = toUint32;
        "signed"                 = toUint32;
        "signed int"             = toUint32;
        "unsigned"               = toUint32;
        "unsigned int"           = toUint32;

        "long"                   = toInt64;
        "long int"               = toInt64;
        "signed long"            = toInt64;
        "signed long int"        = toInt64;
        "unsigned long"          = toUint64;
        "unsigned long int"      = toUint64;

        "long long"              = toInt64;
        "long long int"          = toInt64;
        "signed long long"       = toInt64;
        "signed long long int"   = toInt64;
        "unsigned long long"     = toUint64;
        "unsigned long long int" = toUint64;

        #
        # <stdint.h>
        #

        # For 64 bit
        "intptr_t"               = _data_model.LP64."long int";
        "uintptr_t"              = _data_model.LP64."unsigned long int";
        "ptrdiff_t"              = _data_model.LP64.uintptr_t;
      };
    };
    parseDecl =
      dataModel:
      decl:
      let
        fields  =
          builtins.match "^([^*]*)([* ]+)([^ ]+)$" (
            # Collapse all spaces
            collapseSpaces (
              # Make sure pointers are well identifiable
              builtins.replaceStrings [ "*" ] [ " * " ] decl
            )
          )
        ;
      in
      if fields == null
      then (throw "Could not parse declaration '${decl}'.")
      else
        let
          dataModel' =
            if builtins.isString dataModel
            then _data_model."${dataModel}"
            else dataModel
          ;
          type    = collapseSpaces (builtins.elemAt fields 0);
          pointer'= collapseSpaces (builtins.elemAt fields 1);
          name    = collapseSpaces (builtins.elemAt fields 2);
          pointer = pointer' == "*";
          # NOTE: Pointers are converted as uintptr_t, it's only for machine code interfacing.
          #       This is not producing an API.
          convert =
            if pointer
            then dataModel'."uintptr_t"
            else
              dataModel'."${type}"
              or (throw "No type found for '${type}'")
          ;
        in
        {
          inherit
            type
            name
            pointer
            convert
          ;
        }
    ;
  };
}
