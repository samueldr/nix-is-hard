{ lib }:

{
  linux = {
    select =
      system:
      let
        arch = (lib.arch.select system).name;
      in
      lib.linux."${arch}"
        or (throw "Unknown or unimplemented architecture '${arch}' for `linux`.")
    ;
    # Architecture-independent constants and implementation details.
    generic = {
      STDIN  = 0;
      STDOUT = 1;
      STDERR = 2;
    };
  }
    // (import ./x86_64.nix { inherit lib; }).linux
  ;
}
