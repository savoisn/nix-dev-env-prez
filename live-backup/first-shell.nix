{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = with pkgs;[ jdk17 gradle maven cowsay sl ];
  shellHooks = ''
    export FOO="FOOOOOOO"
    '';
}
