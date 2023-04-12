{ lib, stdenv }:

stdenv.mkDerivation rec {

  pname = "hello";

  version = "2.12";

  src = builtins.fetchTarball {
    url = "https://ftp.gnu.org/gnu/${pname}/${pname}-${version}.tar.gz";
    sha256 = "1mc1vrixpkzkdnvpzn3b01awvha6z7k2dnpai3c6g89in8l1wr70";
  };

  meta = with lib; {
    license = licenses.gpl3Plus;
  };

}
