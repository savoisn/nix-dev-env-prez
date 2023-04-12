let
  pkgs = import <nixpkgs> { };
in
pkgs.stdenv.mkDerivation {
  nativeBuildInputs = [pkgs.cmake];
  name = "maDeriv";
  src = pkgs.fetchFromGitHub {
    rev = "70e6f5ef627240589378e0e9e527a197faa0acde";
    owner = "posva";
    repo = "catimg";
    sha256 = "4EW10nF8gR8zGh0uXalGnicdB4h+KayVHne0AhvtDww=";
  };
}

