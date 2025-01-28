{ lib
, expect
, ... }:

{
  merge = {
    works = expect "that merge works"
      (lib.merge { a = "1"; } { b = "2"; })
      { a = "1"; b = "2"; }
    ;
  };
  concatAttrs = {
    works = expect "that concatAttrs works"
      (lib.concatAttrs [ { a = 1; } { b = 9; } { c = 3; } { b = 2; } ])
      { a = 1; b = 2; c = 3; }
    ;
  };
}
