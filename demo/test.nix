let
  a = "a";
  pkgs = import <nixpkgs> {};
in
  pkgs.stdenv.mkDerivation {
    name = "my-derivation";
    src = ./.;
  }
