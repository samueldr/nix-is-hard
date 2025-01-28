{ lib }:

{
  optional =
    condition: el:
    if condition then [ el ] else []
  ;
  optionals =
    condition: list:
    if condition then list else []
  ;
  mapReverse =
    fn: list:
    let
      len = builtins.length list;
    in
    builtins.genList (
      i:
      let
        el = builtins.elemAt list (len - i - 1);
      in
      fn el
    ) len
  ;
  mapWithIndex =
    fn: list:
    let
      len = builtins.length list;
    in
    builtins.genList (
      i:
      let el = builtins.elemAt list i; in
      fn i el
    ) len
  ;
  # Given a list of strings, returns an attrset of the same strings, key and values matching.
  listToAttrsStrings =
    strings:
    builtins.listToAttrs (
      builtins.map
      (str: { name = str; value = str; })
      strings
    )
  ;
}
