{ lib }:

{
  # Given a Nix-flavoured system (i.e. `builtins.currentSystem`)
  # parse the system in semantics this tooling understands.
  # NOTE: an invalid "complete system" returns `null`.
  #       This allows consumers of this function to accept an architecture
  #       (i.e. `x86_64`) by checking the return value.
  parseSystem =
    system:
    let
      parts = 
        (builtins.match "(.+)-([^-]+)" system)
      ;
    in
    if parts == null then null else
    builtins.listToAttrs (
      lib.mapWithIndex
      (i: value:
        {
          name =
            if i == 0
            then "arch"
            else "os"
          ;
          inherit value;
        }
      )
      parts
    )
  ;
}
