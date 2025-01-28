{ lib }:

{
  collapseSpaces =
    str:
    builtins.concatStringsSep " " (
      builtins.filter
      (s: s != "" && s != [])
      (builtins.split " " str)
    )
  ;
  chars =
    str:
    builtins.filter
    (el: el != "" && el != [])
    (builtins.split "" str)
  ;
  join =
    list:
    builtins.concatStringsSep "" list
  ;
}
