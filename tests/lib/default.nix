fns':
let
  lib = import ../../lib;
  fns = fns' // { inherit lib; };
in
{
  maths = import ./maths.nix (fns);
  strings = import ./strings.nix (fns);
  lists = import ./lists.nix (fns);
  attrs = import ./attrs.nix (fns);
  functions = import ./functions.nix (fns);
  binary = import ./binary.nix (fns);
  ctypes = import ./ctypes.nix (fns);
}
