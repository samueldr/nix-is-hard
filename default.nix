let
  lib = import ./lib;

  inherit (lib)
    buildProgram
  ;
  inherit (lib.linux.select builtins.currentSystem)
    dsl
  ;

  # Some useful constants
  # TODO: consider moving this into Linux?
  #       or have higher level helpers in the DSL (`puts`?)
  stdout = 1;

  simple = buildProgram {
    name = "simple";
    code = dsl.syscall.exit 42;
  };

  hello =
    buildProgram {
      name = "hello";
      code =
        { getString, ... }:
        builtins.concatLists [
          (dsl.syscall.write stdout (getString "hello").addr (getString "hello").length)
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
    }
  ;

  chmod =
    buildProgram {
      name = "chmod";
      code =
        { getString, ... }:
        builtins.concatLists [
          (dsl.syscall.chmod (getString "path").addr 511 /* 0777 */)
          # Move return value from previous syscall into ARG0
          # Making the tool return the return value of the syscall
          (dsl.copy_reg "ARG0" "RETURN")
          (dsl.syscall.exit null)
        ]
      ;
      strings =
        {
          path = "file.sh";
        }
      ;
    }
  ;
in
{
  inherit lib;
  inherit simple;
  inherit hello;
  inherit chmod;
}
