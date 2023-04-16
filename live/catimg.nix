let
  pkgs = import <nixpkgs> { };
in 
  pkgs.stdenv.mkDerivation {
    name = "catimg";
    nativeBuildInputs = [pkgs.cmake];
    src = pkgs.fetchFromGitHub {
      rev = "70e6f5ef627240589378e0e9e527a197faa0acde";
      repo = "catimg";
      owner = "posva";
      sha256 = "4EW10nF8gR8zGh0uXalGnicdB4h+KayVHne0AhvtDww=";

    };
  }
