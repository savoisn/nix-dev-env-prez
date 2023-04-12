{ pkgs ? import <nixpkgs> { } }:
let
  message = "Y a DnD qui vient de sortir au Cine... mais qu'est ce qu'on fait encore ici!";
in
pkgs.mkShell {
  buildInputs = with pkgs; [ cowsay slides figlet catimg graph-easy ];
  shellHook = ''
    catimg images/Logo_DevoxxFR.png -H 20
    catimg images/devoxx_fr_2023.png -H 20
  '';
}
