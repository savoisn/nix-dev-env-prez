let
  a = 1;
  b = 2;
  f = import ./toi.nix;
  s = {
    inherit a;
  };
in
f s
