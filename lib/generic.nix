{ lib, ... }:

let
  inherit (lib)
    mkElf
  ;
in
{
  # Thin wrapper around mkElf.
  buildProgram =
    { code
    , data
    }:

    mkElf rec {
      inherit code data;
    }
  ;
}
