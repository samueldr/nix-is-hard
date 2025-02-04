{ lib }:

let
  self = lib.linux.aarch64;
in
{
  linux = {
    aarch64 = with lib.linux.generic; (lib.linux.generic // rec {
      arch = lib.arch.aarch64;
      # Kernel data types for aarch64
      dataModel = lib.linux.generic.dataModels.LP64;
      dsl = {
        parseLogicalReg =
          name:
          let
            numMatch = builtins.match ".*([0-5])" name;
            num = lib.toInt (builtins.head numMatch);
          in
          if !builtins.isString name
          then (throw "A string must be provided to parseLogicalReg")
          else
            if name == "RETURN"
            then RETURN_REGISTER
            else
              if numMatch != null
              then builtins.elemAt ARG_REGISTER num
              else
                name
        ;
        mkSyscall =
          syscall_name:
          args:
          lib.generateListLambda {
            finally =
              args:
              [(lib.comment "linux aarch64 syscall: ${syscall_name}")]
              ++ (syscall syscall_name args)
            ;
            functions =
              lib.mapWithIndex
              (arg_pos: syscall_arg:
                let
                  inherit (lib.ctypes.parseDecl dataModel syscall_arg)
                    name
                    type
                    convert
                  ;
                  expected_size = lib.bytesCount (convert 0);
                in
                value:
                if builtins.isList value
                then
                  let len = (lib.bytesCount value); in
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
        # Copying to an architecture-specific register is possible (copy_reg "x20" "RETURN") but not inherently portable.
        copy_reg =
          # TODO: consider adding 'SCRATCH0~N' for non-syscall portable registers?
          into: from:
          (lib.arch.aarch64.instructions.MOV_reg (dsl.parseLogicalReg into) (dsl.parseLogicalReg from))
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
              ["fchmodat" [
                "int dfd"
                "const char *filename"
                "umode_t mode"
              ]]
              ["exit" [
                "int error_code"
              ]]
            ]
          )
        ;
        argv1_to_reg =
          { register # Logical register names accepted (i.e. ARG0)
          , errorMessage ? null # An attrset with `offset` and `length` for a given string.
          }:
          
          let
            register' = dsl.parseLogicalReg register;
            errorFragment = builtins.concatLists [
              (lib.optionals (!builtins.isNull errorMessage) 
                (dsl.syscall.write STDOUT errorMessage.addr errorMessage.length)
              )
              (dsl.syscall.exit 1)
            ];
            # NOTE: we have to compensate for the jump's operand length too...
            relAfter_errorFragment = 0
              + 4
              + (lib.bytesCount errorFragment)
            ;
          in
          builtins.concatLists [
            [(lib.comment "<start> argv1 to register (${toString register})")]

            # We're using the output register as scratch to test presence of argv1
            # Get the *value* of argc
            (lib.arch.aarch64.instructions.LDR_mem register' "sp")

            # We're checking *strictly* for argc == 1
            (lib.arch.aarch64.instructions.CMP_imm register' (lib.ctypes.toUint32 1))
            /* */ # When 1, move to after errorFragment
            /* */ (lib.arch.aarch64.instructions.B.NE relAfter_errorFragment)
            /* */ # else, error out
            /* */ errorFragment

            # Get the argc pointer
            (lib.arch.aarch64.instructions.MOV_reg register' "sp")
            # Skip over argc and argv0
            (lib.arch.aarch64.instructions.ADD_imm register' (lib.ctypes.toUint32 (2 * 8)))
            # Here we copy into the register (effectively (char*)argv[1]).
            (lib.arch.aarch64.instructions.LDR_mem register' register')

            [(lib.comment "<end> argv1 to register (${toString register})")]
          ]
        ;
      };
      # Syscall numbers
      _syscalls = {
        "fchmodat" = 53;
        "write"    = 64;
        "exit"     = 93;
      };
      # Registers in argument position order
      ARG_REGISTER = [
        "x0"
        "x1"
        "x2"
        "x3"
        "x4"
        "x5"
      ];
      RETURN_REGISTER = "x0";
      NR_REGISTER = "x8";
      syscall =
        let
          inherit (lib.arch.aarch64)
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
                in
                if arg == null then []   # Skip externally handled arg.
                else
                  builtins.concatLists [
                    (
                      instructions.MOV_imm
                      (builtins.elemAt ARG_REGISTER i)
                      arg
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
            _syscalls."${name}"
          )
          instructions.syscall
        ]
      ;
    });
  };
}
