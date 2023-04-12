let
  pkgs = import <nixpkgs> { };
in
pkgs.stdenv.mkDerivation {
  name = "my first derivation";
  src = ./.;
  installPhase = ''
    mkdir -p $out
    echo Hello > $out/greeting
  '';
}
