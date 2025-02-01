let
  lib = import ./lib;

  inherit (lib)
    buildProgram
  ;
  inherit (lib.linux.select builtins.currentSystem)
    arch
    dsl
    STDOUT
  ;

  simple = buildProgram {
    inherit arch;
    name = "simple";
    code = dsl.syscall.exit 42;
  };

  hello = buildProgram {
    inherit arch;
    name = "hello";
    code =
      { getString, ... }:
      builtins.concatLists [
        (dsl.syscall.write STDOUT (getString "hello").addr (getString "hello").length)
        (dsl.syscall.exit 0)
      ]
    ;
    strings =
      {
        hello = ''
          @ ${builtins.nixVersion}
          @ ${builtins.currentSystem}
          Etiam mauris nulla, suscipit ut gravida eget, tincidunt ac orci. Suspendisse
          aliquet lacus semper imperdiet elementum. Cras sodales lorem nec mauris
          bibendum elementum. Phasellus sed metus non orci posuere pretium feugiat at
          nisl. Suspendisse facilisis eget est non facilisis. Curabitur ac enim iaculis,
          vehicula purus ut, sodales ante. Nunc finibus imperdiet tellus in pharetra.
        '';
      }
    ;
  };

  "chmod+x" = buildProgram {
    inherit arch;
    name = "chmod+x";
    code =
      { getString, ... }:
      builtins.concatLists [
        (dsl.argv1_to_reg {
          register = "ARG0";
          errorMessage = getString "no_argv1";
        })
        (dsl.syscall.chmod null 511 /* 0777 */)
        # Move return value from previous syscall into ARG0
        # Making the tool return the return value of the syscall
        (dsl.copy_reg "ARG0" "RETURN")
        (dsl.syscall.exit null)
      ]
    ;
    strings =
      {
        # Note: no argv0 support yet
        no_argv1 = "Usage: chmod+x <path>\n";
      }
    ;
  };
in
{
  inherit lib;
  inherit simple;
  inherit hello;
  inherit "chmod+x";
}
