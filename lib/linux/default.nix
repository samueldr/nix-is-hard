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
      # Special value used to indicate openat should use the current working directory.
      AT_FDCWD = -100;
    };
  }
    // (import ./x86_64.nix { inherit lib; }).linux
  ;
}
