let
  pkgs = import <nixpkgs> { system = builtins.currentSystem; };

in
pkgs.stdenv.mkDerivation rec {

  nativeBuildInputs = with pkgs; [ gcc clang cmake ];

  pname = "catimg";

  src = pkgs.fetchFromGitHub {
    owner = "posva";
    repo = "catimg";
    rev = "5e096faa751b8f4eef04ccae923c9aa344dd2e9d";
    sha256 = "OiFWnYgVXBDNPlWlX7TMXO5PB2GwlCaoWK11shfXTSg=";

  };


}
