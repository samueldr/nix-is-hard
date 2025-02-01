{ pkgs ? import <nixpkgs> {}
, additionalPackages ? []
}: pkgs.callPackage (

{ mkShell
, nasm
, gdb
, xxd
, ruby
, jq
}:

mkShell {
  buildInputs = [
    nasm
    gdb
    xxd
    ruby
    jq
  ] ++ (
    builtins.map
    (attr: pkgs."${attr}")
    additionalPackages
  );
}

) {}
