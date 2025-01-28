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
}
