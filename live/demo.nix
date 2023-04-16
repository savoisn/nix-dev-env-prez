let
  a = 1;
  b = 2;
  f = import ./add.nix;
in
  f {a=a;}
