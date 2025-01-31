let
  inherit (import ./attrs.nix { lib = {}; })
    concatAttrs
  ;
  lib =
    (concatAttrs [
      # Nix
      (import ./attrs.nix     { inherit lib; })
      (import ./lists.nix     { inherit lib; })
      (import ./maths.nix     { inherit lib; })
      (import ./strings.nix   { inherit lib; })
      (import ./functions.nix { inherit lib; })
      (import ./nix.nix       { inherit lib; })

      # This nonsense
      (import ./binary.nix    { inherit lib; })
      (import ./ctypes.nix    { inherit lib; })
      (import ./elf           { inherit lib; })
      (import ./arch          { inherit lib; })
      (import ./linux         { inherit lib; })
      (import ./buildProgram.nix { inherit lib; })
    ])
  ;
in
lib
