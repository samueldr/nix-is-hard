{ lib, ... }:

let
  inherit (lib)
    mkElf_legacy
  ;
in
{
  # Thin wrapper around mkElf.
  buildProgram =
    { code
    , data
    }:

    mkElf_legacy rec {
      inherit code data;
    }
  ;
}
