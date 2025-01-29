{ lib }:

{
  linux = {}
    // (import ./x86_64.nix { inherit lib; }).linux
  ;
}
