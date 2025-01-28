{ lib }:

rec {
  merge = a: b: a // b;
  concatAttrs =
    list:
    builtins.foldl' merge {} list
  ;
}
