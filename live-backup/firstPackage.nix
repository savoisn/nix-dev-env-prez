let
  pkgs = import <nixpkgs> { };
in
  pkgs.stdenv.mkDerivation {
    name = "catimg";
    nativeBuildInputs = with pkgs; [cmake];
    src = pkgs.fetchFromGitHub {
      owner = "posva";
      rev = "70e6f5ef627240589378e0e9e527a197faa0acde";
      repo = "catimg";
      sha256 = "4EW10nF8gR8zGh0uXalGnicdB4h+KayVHne0AhvtDww=";
    };
  }
