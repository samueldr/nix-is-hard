let
  lib = import ./lib;

  inherit (lib)
    mkBinary
    buildProgram
    basicLatinToBytes
    linux
    arch
  ;

  inherit (lib.ctypes)
    toUint32
    toUint64
  ;

  simpleElf = buildProgram {
    code = linux.x86_64.dsl.syscall.exit 42;
  };

  helloElf =
    let
      stdout = 1;
      inherit (linux.x86_64.dsl) syscall;
    in
    buildProgram {
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

  chmodElf =
    let
      inherit (linux.x86_64.dsl) syscall;
    in
    buildProgram {
      code =
        { getString, ... }:
        builtins.concatLists [
          (syscall.chmod (getString "path").addr 511 /* 0777 */)
          # Move return value from previous syscall into ARG0
          # Making the tool return the return value of the syscall
          (arch.x86_64.instructions.MOV_reg "rdi" "rax")
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
  inherit simpleElf;
  simple = mkBinary {
    name = "main";
    bytes = simpleElf.bytes;
    executable = true;
  };
  inherit helloElf;
  hello = mkBinary {
    name = "main";
    bytes = helloElf.bytes;
    executable = true;
  };
  inherit chmodElf;
  chmod = mkBinary {
    name = "main";
    bytes = chmodElf.bytes;
    executable = true;
  };
}
