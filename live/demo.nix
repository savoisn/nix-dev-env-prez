let 
  a = 3;
  b = "quatre";
  f = import ./toi.nix;
in
f {inherit a;}
