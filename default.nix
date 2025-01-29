let
  lib = import ./lib;

  inherit (lib)
    buildProgram
    linux
  ;

  simple = buildProgram {
    name = "simple";
    code = linux.x86_64.dsl.syscall.exit 42;
  };

  hello =
    let
      stdout = 1;
      inherit (linux.x86_64.dsl) syscall;
    in
    buildProgram {
      name = "hello";
      code =
        { getString, ... }:
        builtins.concatLists [
          (syscall.write stdout (getString "hello").addr (getString "hello").length)
          (syscall.exit 0)
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
    let
      inherit (linux.x86_64.dsl)
        syscall
        copy_reg
      ;
    in
    buildProgram {
      name = "chmod";
      code =
        { getString, ... }:
        builtins.concatLists [
          (syscall.chmod (getString "path").addr 511 /* 0777 */)
          # Move return value from previous syscall into ARG0
          # Making the tool return the return value of the syscall
          (copy_reg "ARG0" "RETURN")
          (syscall.exit null)
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
