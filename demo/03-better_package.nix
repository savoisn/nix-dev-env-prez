let
  pkgs = import <nixpkgs> { system = builtins.currentSystem; };
  helloPackage = import ./hello-package.nix;

in
helloPackage { stdenv = pkgs.stdenv; lib = pkgs.lib; }
