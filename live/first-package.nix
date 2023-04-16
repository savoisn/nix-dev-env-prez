let
  pkgs = import <nixpkgs> { };
in 
  pkgs.stdenv.mkDerivation {
    name = "monpack";
    src = ./.;
    installPhase = ''
      mkdir -p $out
      echo "Hello Devoxx" > $out/monFichier
    '';
  }
