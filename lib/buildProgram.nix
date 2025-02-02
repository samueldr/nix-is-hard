{ lib, ... }:

let
  inherit (lib)
    mkBinary
    mkElf
  ;
in
{
  #
  # Wrapper to streamline building a program.
  #
  # The `code` argument takes the usual list of bytes, or function returning one.
  # Using the DSL helpers to produce the list of bytes is expected.
  # Data can be provided with either a list of bytes with `data`, or a `mkCStrings` input with `strings`.
  #
  # An helper function (`getString`) can be used to get the attrset for the string,
  # augmented with the `addr` for the string, when `strings` is provided.
  # It takes the attrname of the string as a parameter (or the full string, when using a list for `mkCStrings`).
  #
  buildProgram =
    { name # Name of the program, and the binary
    , arch # Architecture for the program
    , code
    , data ? null
    , strings ? null
    }:

    if data != null && strings != null
    then throw "Calling buildProgram with both `data` and `strings` is invalid."
    else
    let data' = data; in # Break reference cycle
    let strings' = strings; in # Break reference cycle
    let
      strings = if strings' != null then lib.cstrings.mkCStrings strings' else null;
      data =
        if !builtins.isNull strings
        then strings.bytes
        else data'
      ;
      elf = mkElf {
        inherit arch;
        sections = [
          (lib.mkElfSection {
            name = ".text";
            type = "SHT_PROGBITS";
            bytes =
              if builtins.isFunction code && !builtins.isNull strings
              then (args: code (args // {
                getString =
                  name:
                  {
                    addr = (args.sections.".rodata".addr or 0) + strings.offsets."${name}";
                    offset = strings.offsets."${name}";
                    length = builtins.stringLength strings.strings."${name}";
                  }
                ;
              }))
              else code
            ;
          })
        ]
        ++
        (lib.optional (data != null)
          (lib.mkElfSection {
            name = ".rodata";
            type = "SHT_PROGBITS";
            bytes = data;
          })
        )
        ;
      };
    in
    (mkBinary {
      inherit name;
      bytes = (lib.stripComments elf.bytes);
      executable = true;
    }) // {
      inherit elf;
      inherit code;
    }
  ;
}
