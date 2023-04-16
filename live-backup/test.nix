let
  a = "1";
  b = "2";
  c = { inherit a; inherit b; };

  f = { a, ... }: "Hello ${a}";
in
f c
