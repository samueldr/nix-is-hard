{ lib
, expect
, ...
}:

{
  optional = {
    true  = expect "(optional true 1) == [ 1 ]" (lib.optional true 1) [ 1 ];
    false = expect "(optional false 1) == [ ]" (lib.optional false 1) [ ];
    list = expect "(optional true [ 1 ]) == [ [ 1 ] ]" (lib.optional true [ 1 ]) [ [ 1 ] ];
  };
  optionals = {
    true  = expect "(optionals true [ 2 3 ]) == [ 2 3 ]" (lib.optionals true [ 2 3 ]) [ 2 3 ];
    false = expect "(optionals false [ 2 3 ]) == [ ]" (lib.optionals false [ 2 3 ]) [ ];
  };
  mapReverse = {
    works = expect "that map reverse works"
      (lib.mapReverse (i: toString i) [ 1 2 3 ])
      [ "3" "2" "1" ]
    ;
  };
  mapWithIndex = {
    works = expect "that map with index works"
      (lib.mapWithIndex (i: v: [ i v ]) [ "a" "b" "c" ])
      [
        [ 0 "a" ]
        [ 1 "b" ]
        [ 2 "c" ]
      ]
    ;
  };
  listToAttrsStrings = {
    works = expect "that listToAttrsStrings works"
      (lib.listToAttrsStrings [ "a" "b" "c" ])
      { a = "a"; b = "b"; c = "c"; }
    ;
    repeatedWorks = expect "that repeated strings works"
      (lib.listToAttrsStrings [ "a" "b" "c" "b" "a" ])
      { a = "a"; b = "b"; c = "c"; }
    ;
  };
  listFind = {
    findsThings = expect "that listFind finds the first element matching predicate"
      (lib.listFind (el: el.a == 2) [ { a = 1; b = 9; } { a = 2; b = 8; } { a = 2; b = 7; } ])
      { a = 2; b = 8; }
    ;
    findsNothin = expect "that listFind finds nothing when nothing matches"
      (lib.listFind (el: el == 9) [ 1 2 3 4 ])
      null
    ;
  };
  last = {
    getsLastElement = expect "that last gets the last element"
      (lib.last [ 0 1 2 3 4 ])
      4
    ;
  };
}
