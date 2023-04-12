{ pkgs ? import <nixpkgs> { } }:
let
  message = "Hello for var";
in
pkgs.mkShell {
  buildInputs = with pkgs; [ cowsay sl ];
  shellHook = ''
    export JAVA_HOME="toto toto"
    export M2_HOME="titi titi titi"
    cowsay ${message}
  '';
}
