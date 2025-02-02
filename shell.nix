{ pkgs ? import <nixpkgs> {}
, additionalPackages ? []
}: pkgs.callPackage (

{ mkShell
, nasm
, gdb
, xxd
, ruby
, jq
, qemu
, pkgsCross
}:

mkShell {
  nativeBuildInputs =
    [
      nasm
      gdb
      xxd
      ruby
      jq
      qemu
      pkgsCross.aarch64-multiplatform.stdenv.cc
    ]
    ++ (
        builtins.map
        (attr: pkgs."${attr}")
        additionalPackages
      )
  ;
}

) {}
