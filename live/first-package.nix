let
  pkgs = import <nixpkgs> { };
in
pkgs.stdenv.mkDerivation {
  name = "maDeriv";
  src = ./.;
  installPhase = ''
    mkdir $out/
    echo "Coucou" > $out/myfile
  '';
}

