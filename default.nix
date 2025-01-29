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

  helloWorld =
    let
      # TODO: build up an additional section instead of appending it to code section?
      hello_world = ''
        @ ${builtins.nixVersion}
        @ ${builtins.currentSystem}
        Etiam mauris nulla, suscipit ut gravida eget, tincidunt ac orci. Suspendisse 
        aliquet lacus semper imperdiet elementum. Cras sodales lorem nec mauris 
        bibendum elementum. Phasellus sed metus non orci posuere pretium feugiat at 
        nisl. Suspendisse facilisis eget est non facilisis. Curabitur ac enim iaculis, 
        vehicula purus ut, sodales ante. Nunc finibus imperdiet tellus in pharetra.
      '';
      hello_world_length = builtins.stringLength hello_world;
      data = builtins.concatLists [
        (basicLatinToBytes hello_world) [0]
      ];
    in
    buildProgram {
      code =
        { load_addr, section_addr, ... }:
        let
          # FIXME: we're (still) slapping the data section right after the code section.
          #        instead the sections should receive the different sections and their length+offsets.
          #        then we'd put the string data into a section, and refer to that section
          #        we would still need a sort of "string bag" to be able to find string offsets...
          code_length = (builtins.length (code { }));
          code =
            { code_length ? 0 }:
            let
              inherit (linux.x86_64.dsl.syscall)
                write
                exit
              ;
              stdout = 1;
            in
            builtins.concatLists [
              (write stdout (section_addr + code_length ) hello_world_length)
              (exit 42)
            ]
          ;
        in
        code { inherit code_length; }
      ;
      inherit data;
    }
  ;

  chmod =
    let
      path = "file.sh";
      data = builtins.concatLists [
        (basicLatinToBytes path)
        [ 0 ]
      ];
    in
    buildProgram {
      code =
        { load_addr, section_addr, ... }:

        let
          # TODO: use ARGV[1]?
          code_length = (builtins.length (code { code_length = 0; }));
          code =
            { code_length }:
            let
              inherit (linux.x86_64.dsl.syscall)
                chmod
                exit
              ;
            in
            builtins.concatLists [
              (chmod (section_addr + code_length) 511 /* 0777 */)
              # Move return value from previous syscall into ARG0
              # Making the tool return the return value of the syscall
              (arch.x86_64.instructions.MOV_reg "rdi" "rax")
              (exit null)
            ]
          ;
        in
        code { inherit code_length; }
      ;
      inherit data;
    }
  ;

  newBin =
    let
      strings = lib.cstrings.mkCStrings {
        hello = "Hello, World!\n";
      };
    in
    # TODO: make a "strings aware" builder instead of using raw elf sections.
    lib.mkElf {
      sections = [
        (lib.mkElfSection {
          name = ".text";
          type = "SHT_PROGBITS";
          bytes =
            let
              stdout = 1;
            in
            { sections ? { ".rodata" = { addr = 0; }; }
            , ...
            }:
            builtins.concatLists [
              (linux.x86_64.dsl.syscall.write stdout (sections.".rodata".addr + strings.offsets.hello) (builtins.stringLength strings.strings.hello))
              (linux.x86_64.dsl.syscall.exit 0)
            ]
          ;
        })
        (lib.mkElfSection {
          name = ".rodata";
          type = "SHT_PROGBITS";
          bytes = strings.bytes;
        })
      ];
    }
  ;
in
{
  inherit lib;
  hello = mkBinary {
    name = "main";
    bytes = helloWorld;
    executable = true;
  };
  chmod = mkBinary {
    name = "main";
    bytes = chmod;
    executable = true;
  };
  newBin = mkBinary {
    name = "main";
    bytes = newBin.bytes;
    executable = true;
  };
}
