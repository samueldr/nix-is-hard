{ lib
, expect
, ...
}:

{
  parseSystem = {
    parse_x86_64-linux = expect "parseSystem to parse x86_64-linux"
      (lib.parseSystem "x86_64-linux")
      { arch = "x86_64"; os = "linux"; }
    ;
    parse_aarch64-linux = expect "parseSystem to parse aarch64-linux"
      (lib.parseSystem "aarch64-linux")
      { arch = "aarch64"; os = "linux"; }
    ;
    nullForArch_x86_64 = expect "parseSystem to return null for a likely architecture names"
      (lib.parseSystem "x86_64")
      null
    ;
    nullForArch_aarch64 = expect "parseSystem to return null for a likely architecture names"
      (lib.parseSystem "aarch64")
      null
    ;
  };
}
