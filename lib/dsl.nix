{ lib }:

{
  comment =
    comment:
    {
      __dsl = true;
      __type = "comment";
      inherit comment;
    }
  ;
  # Only strip
  stripComments =
    builtins.filter
    (el: !builtins.isList el && !(el.__dsl or false) && el.__type or "" != "comment")
  ;

  bytesCount =
    bytes:
    (builtins.length (lib.stripComments bytes))
  ;
}
