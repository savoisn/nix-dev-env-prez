{pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs=with pkgs;[ jdk17 maven cowsay sl];
}

