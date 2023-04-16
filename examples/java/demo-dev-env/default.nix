{ jdk ? "jdk16" }:

let
  # get a normalized set of packages, from which
  # we will install all the needed dependencies
  pkgs = import ./pkgs.nix { inherit jdk; };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.${jdk}
    pkgs.gradle
    pkgs.maven
    pkgs.jq
    pkgs.myEclipse
  ];
  shellHook = ''
    export NIX_ENV=dev
  '';
}





