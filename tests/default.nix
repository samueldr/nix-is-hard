{ output ? "results" }:
let
  isTest = attrs: attrs.__test or false;
  expect' =
    { name
    , value
    , expected
    , expectedResult ? "ok"
    }:
    let
      name' =
        name
        + (if expectedResult == "fail" then " to fail..." else "")
        + (if expectedResult == "throw" then " to throw..." else "")
      ;
      attempt = builtins.tryEval value;
      result =
        if !attempt.success
        then "throw"
        else
          if value == expected
          then "ok"
          else "fail"
      ;
    in
    {
      __test = true;
      name = name';
      result =
        if result == expectedResult
        then "ok"
        else "fail(${result})"
      ;
      inherit
        expected
      ;
      value =
        if attempt.success
        then value
        else null
      ;
    }
  ;
  fns = {
    expect =
      name: value: expected:
      expect' {
        inherit
          name
          value
          expected
        ;
      }
    ;
    expectFail =
      name: value: expected:
      expect' {
        expectedResult = "fail";
        inherit
          name
          value
          expected
        ;
      }
    ;
    expectThrow =
      name: value:
      expect' {
        expectedResult = "throw";
        inherit
          name
          value
        ;
        expected = null;
      }
    ;
  };

  collectTests' =
    { attrs, path ? [] }:

    builtins.concatLists (
      builtins.map (
        name:
        let
          value = attrs."${name}";
          attrPath = path ++ [ name ];
        in
        if builtins.isAttrs value && !(isTest value)
        then collectTests' { attrs = value; path = attrPath; }
        else [{
          name = builtins.concatStringsSep "." attrPath;
          inherit value;
        }]
      ) (builtins.attrNames attrs)
    )
  ;
  collectTests = attrs: collectTests' { inherit attrs; };

  suite = collectTests {
    _selfTests = import ./self-tests.nix (fns);
    lib = import ./lib (fns);
  };

  results =
    let
      filtered =
        builtins.partition
        (test: test.value.result == "ok")
        suite
      ;
    in
    {
      _tests = {
        _success = builtins.listToAttrs filtered.right;
        failure  = builtins.listToAttrs filtered.wrong;
      };
      failure = builtins.length filtered.wrong;
      success = builtins.length filtered.right;
    }
  ;
in
{
  inherit
    results
    suite
    isTest
  ;
}."${output}"
