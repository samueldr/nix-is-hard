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
  }
    // (import ./generic.nix { inherit lib; }).linux
    // (import ./aarch64.nix { inherit lib; }).linux
    // (import ./x86_64.nix { inherit lib; }).linux
  ;
}
