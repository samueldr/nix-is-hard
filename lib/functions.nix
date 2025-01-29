{ lib }:

{
  identity = a: a;
  #
  # Given a list of functions, will provide lambda that applies them in order, returning a list of results.
  #
  # let
  #   example = generateListLambda {
  #     functions = [
  #       (arg: "A: ${toString arg}")
  #       (arg: "B: ${toString arg}")
  #       (arg: "C: ${toString arg}")
  #     ];
  #   };
  # in
  # example 100 20 3
  # => [ "A: 100" "B: 20" "C: 3" ]
  #
  # The `initial`, and `merge` arguments can be used to work with different types than lists.
  #
  # The `finally` argument can be used to transform the result.
  #
  generateListLambda =
    { functions
    , initial ? []
    , merge ? (a: b: a ++ [ b ])
    , finally ? lib.identity
    }:
    if functions == []
    then throw "generateListLambda: empty functions parameter provided."
    else
    let
      len = builtins.length functions;
      apply =
        { curr
        , arg
        , coll ? initial
        }:
        let
          result =
            merge
            coll
            ((builtins.elemAt functions curr) arg)
          ; in
        if curr == len - 1
        then (finally result)
        else (newArg: apply { curr = curr + 1; coll = result; arg = newArg; })
      ;
    in
    arg: apply { curr = 0; inherit arg; }
  ;
}
