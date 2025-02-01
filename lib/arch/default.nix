{ lib }:

let
  # Help out users in some situations with slightly wrong names being used.
  architectureHintsFor =
    arch:
    builtins.listToAttrs (
      builtins.map (
        name:
        {
          inherit name;
          value = builtins.throw "architecture '${name}' is named '${arch.name}'.";
        }
      ) arch.synonymousArches
    )
  ;
  synonyms = {}
    // (architectureHintsFor lib.arch.x86_64)
  ;
in
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
        found = lib.arch."${parsed}" or null;
        synonym = synonyms."${parsed}" or null;
      in
      if !builtins.isNull found then found else
      if !builtins.isNull synonym then synonym else
      throw "Unknown or unimplemented architecture '${parsed}'` in `arch`."
    ;
  }
    // (import ./x86_64.nix { inherit lib; }).arch
  ;
}
