{ lib }:

{
  arch = {
    select =
      system:
      let
        parsed' = lib.parseSystem system;
        parsed =
          if builtins.isNull parsed'
          then system
          else parsed'.arch
        ;
      in
      lib.arch."${parsed}"
        or (throw "Unknown or unimplemented architecture '${parsed}' for `arch`.")
    ;
  }
    // (import ./x86_64.nix { inherit lib; }).arch
  ;
}
