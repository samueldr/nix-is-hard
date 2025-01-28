{ lib
, expect
, expectThrow
, ... }:

{
  identity = {
    works = expect "that identity works" (lib.identity "test") "test";
  };
  generateListLambda = {
    # TODO: write more tests... If this interface is not wrong.
    noEmpty = expectThrow "that generateListLambda fails with an empty list"
      (lib.generateListLambda { functions = []; })
    ;
    basic = expect "that generateListLambda produces a single function from a list of one function"
      ((lib.generateListLambda { functions = [ lib.identity ]; }) null)
      [ null ]
    ;
    basicTwo = expect "that generateListLambda produces a 'two-args function' from a list of two functions"
      ((lib.generateListLambda { functions = [ lib.identity (i: i*2) ]; }) null 2)
      [ null 4 ]
    ;
  };
}
