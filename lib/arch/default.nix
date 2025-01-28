{ lib }:

{
  arch = {}
    // (import ./x86_64.nix { inherit lib; }).arch
  ;
}
