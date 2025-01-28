{ lib
, expect
, ...
}:

{
  collapseSpaces = {
    emptyString =
      expect "empty strings to work" (lib.collapseSpaces "") ""
    ;
    noSpaces =
      expect "no spaces to be a no-op" (lib.collapseSpaces "abcd") "abcd"
    ;
    startSingle =
      expect "space at start to be removed" (lib.collapseSpaces " single") "single"
    ;
    startMulti =
      expect "spaces at start to be removed" (lib.collapseSpaces "  multi") "multi"
    ;
    endSingle =
      expect "space at end to be removed" (lib.collapseSpaces "single") "single"
    ;
    endMulti =
      expect "spaces at end to be removed" (lib.collapseSpaces "multi ") "multi"
    ;
    singleSpaces =
      expect "string with only single spaces are no-ops" (lib.collapseSpaces "a simple test") "a simple test"
    ;
    multipleSpaces =
      expect "string with spans of spaces to be collapsed into a single space" (lib.collapseSpaces "this   is    too      spacious") "this is too spacious"
    ;
  };

  chars = {
    emptyString =
      expect "empty strings to return empty list" (lib.chars "") []
    ;
    singleChar =
      expect "single chars to return a single element" (lib.chars "x") [ "x" ]
    ;
    multiChars =
      expect "multi chars to return all chars" (lib.chars "simple test") [ "s" "i" "m" "p" "l" "e" " " "t" "e" "s" "t" ]
    ;
  };

  join = {
    emptyString =
      expect "empty lists to return empty strings" (lib.join []) ""
    ;
    singleChar =
      expect "single char lists to return a single char" (lib.join [ "a" ]) "a"
    ;
    multiChars =
      expect "multi chars lists to return the equivalent string" (lib.join [ "a" "b" " " "c" "d" ]) "ab cd"
    ;
  };
}
