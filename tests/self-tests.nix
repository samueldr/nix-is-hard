{ expect, ... }:
# Self tests...
{
  _expect =
    let
      expected =
        {
          __test = true;
          result = "ok";
          name = "check";
          expected = 42;
          value = 42;
        }
      ;
    in
    expect "that expect works"
    (expect "check" 42 42)
    expected
  ;
  _expect_throw =
    let
      expected =
        {
          __test = true;
          result = "fail(throw)";
          name = "check";
          expected = "irrelevant";
          value = null;
        }
      ;
    in
    expect "that expect will not fail on throw"
    (expect "check" (throw "ok") "irrelevant")
    expected
  ;
}
