let
  pkgs = import <nixpkgs> { system = builtins.currentSystem; };

in
pkgs.stdenv.mkDerivation rec {

  pname = "hello";

  version = "2.11";

  src = builtins.fetchTarball {
    url = "https://ftp.gnu.org/gnu/hello/hello-${version}.tar.gz";
    sha256 = "1a8mqgvgg2za5ilbqwz404bqm5cgzyba44r9k8c662nc9c3y4xfn";
  };

}
