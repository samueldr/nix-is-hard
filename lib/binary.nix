{ lib }:

let
  tarnix = import ((builtins.fetchTarball {
    url = "https://github.com/puckipedia/tarnix/archive/140d8d6f9e4d566213d00edff04ac22c2e0c2590.tar.gz";
    sha256 = "sha256:0ck9y6dqn45gi28agijfmbhdhdrk7xq37qlxg895xv1l5342p9fn";
  }) + "/ustar.nix");
in
rec
{
  mkBinary =
    {
      name,
      bytes,
      executable ? false,
    }:
    let
      tar = builtins.toFile "${name}.tar" (with tarnix;
        makeTar [
          (file name executable bytes)
        ]
      );
    in
    derivation {
      inherit name;
      channelName = name;
      system = "(${name})";
      builder = "builtin:unpack-channel";
      src = "${tar}";
    }
  ;

  # https://en.wikipedia.org/wiki/Basic_Latin_(Unicode_block)
  basicLatinChars =
    " !" + ''"'' + "#$%&'()*+,-./" +
    "0123456789" +
    ":;<=>%@" +
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ" +
    "[\\]^_`" +
    "abcdefghijklmnopqrstuvwxyz" +
    "{|}~"
  ;

  basicLatinToBytes =
    let
      space =  32;
      tilde = 126;
      lut = (builtins.listToAttrs (
        builtins.genList (i: {
          value = i + space;
          name = builtins.substring i 1 basicLatinChars;
        }) (tilde - space)
      )) // {
        "\n" = 10;
      };
    in
    str:
    builtins.map
    (x: lut."${x}")
    (lib.chars str)
  ;

  # NOTE: range: 9223372036854775807 to -9223372036854775808
  # NOTE: order is LSB first.
  numberToBytes =
    value:
    if value < 0
    then (throw "numberToBytes given a negative argument. Not supported yet.")
    else
    let
      splitBytes =
        { value, coll ? [] }:
        if value < 256
        then coll ++ [ value ]
        else (splitBytes {
          value = value / 256;
          coll = coll ++ [ (value - (value / 256 * 256)) ];
        })
      ;
    in
    splitBytes { inherit value; }
  ;
  padBytesLeft =
    amount: bytes:
    let
      len = lib.bytesCount bytes;
      todo =
        if len <= amount
        then amount - len
        else throw "padBytesLeft for ${toString amount} bytes called with list ${toString len} long."
      ;
    in
      (builtins.genList (x: 0) todo) ++ bytes
  ;
  padBytesRight =
    amount: bytes:
    let
      len = lib.bytesCount bytes;
      todo =
        if len <= amount
        then amount - len
        else throw "padBytesRight for ${toString amount} bytes called with list ${toString len} long."
      ;
    in
      bytes ++ (builtins.genList (x: 0) todo)
  ;
}
