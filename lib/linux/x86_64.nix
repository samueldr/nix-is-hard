{ lib }:

{
  linux = {
    x86_64 = rec {
      # Kernel data types for x86_64
      dataModel = lib.ctypes.dataModels.LP64 // {
          # Most 32 bit architectures use "unsigned int" size_t,
          # and all 64 bit architectures use "unsigned long" size_t.
          "size_t"  = dataModel."unsigned long";
          "umode_t" = dataModel."unsigned short";
      };
      dsl = {
        mkSyscall =
          syscall_name:
          args:
          lib.generateListLambda {
            finally = args: syscall syscall_name args;
            functions =
              lib.mapWithIndex
              (arg_pos: syscall_arg:
                let
                  inherit (lib.ctypes.parseDecl dataModel syscall_arg)
                    name
                    type
                    convert
                  ;
                  expected_size = builtins.length (convert 0);
                in
                value:
                if builtins.isList value
                then
                  let len = (builtins.length value); in
                  if len > expected_size
                  then throw (
                    "passed a ${toString len} bytes value to"
                    + " argument '${name}' (#${toString (arg_pos + 1)})"
                    + " of syscall '${syscall_name}';"
                    + " a '${type}' (expecting at most ${toString expected_size} bytes)"
                  )
                  else value
                else
                if builtins.isNull value
                then null
                else
                (convert value)
              )
              args
            ;
          }
        ;
        # Copies the content of a *logical* register to another one.
        # i.e. (copy_reg "ARG0" "RETURN")
        # Copying to a system register is possible to (copy_reg "r15" "RETURN") but not inherently portable.
        copy_reg =
          # TODO: consider adding 'SCRATCH0~N' for non-syscall registers?
          let
            parseLogical =
              name:
              let
                numMatch = builtins.match ".*([0-5])" name;
                num = lib.toInt (builtins.head numMatch);
              in
              if !builtins.isString name
              then (throw "A string must be provided to parseLogical")
              else
                if name == "RETURN"
                then RETURN_REGISTER
                else
                  if numMatch != null
                  then builtins.elemAt ARG_REGISTER num
                  else
                    name
            ;
          in
          into: from:
          (lib.arch.x86_64.instructions.MOV_reg (parseLogical into) (parseLogical from))
        ;
        syscall =
          builtins.listToAttrs (
            builtins.map (
              data:
              let
                name = builtins.elemAt data 0;
                args = builtins.elemAt data 1;
              in
              {
                inherit name;
                value = dsl.mkSyscall name args;
              }
            ) [
              ["write" [
                "unsigned int fd"
                "char *buf"
                "size_t count"
              ]]
              ["exit" [
                "int error_code"
              ]]
              ["chmod" [
                "const char *filename"
                "umode_t mode"
              ]]
            ]
          )
        ;
      };
      # Syscall numbers
      _syscalls = {
        "write" =  1;
        "open"  =  2;
        "close" =  3;
        "chmod" = 90;
        "exit"  = 60;
      };
      # Registers in argument position order
      ARG_REGISTER = [
        "rdi"
        "rsi"
        "rdx"
        "r10"
        "r8"
        "r9"
      ];
      RETURN_REGISTER = "rax";
      NR_REGISTER = "rax";
      syscall =
        let
          inherit (lib.arch.x86_64)
            instructions
          ;
        in
        name: args:
        builtins.concatLists [
          # Args
          (
            builtins.concatLists (
              builtins.genList
              (i:
                let
                  arg = builtins.elemAt args i;
                  is64 = (builtins.length arg) > 4;
                  pad =
                    if is64
                    then 8
                    else 4
                  ;
                in
                if arg == null then []   # Skip externally handled arg.
                else
                  builtins.concatLists [
                    (
                      instructions.MOV_imm
                      (builtins.elemAt ARG_REGISTER i)
                      (lib.padBytesRight pad arg)
                    )
                  ]
              )
              (builtins.length args)
            )
          )
          # We're setting up the syscall number last.
          # By passing null, a field is skipped from the args, and as such
          # any previous value set can beu sed. See `copy_reg`.
          (
            instructions.MOV_imm
            NR_REGISTER
            (lib.ctypes.toUint32 _syscalls."${name}")
          )
          instructions.syscall
        ]
      ;
    };
  };
}
