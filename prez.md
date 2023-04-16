---
author: Nico Savois
date: 12 Avril 2023
paging: Slide %d / %d

---
```
~~~catimg -H 30 ./nix.png

~~~
```

---



```
 _   _ _       ____    ____   ___   ____
| \ | (_)_  __ \ \ \  |  _ \ ( _ ) |  _ \
|  \| | \ \/ /  \ \ \ | | | |/ _ \/\ | | |
| |\  | |>  <   / / / | |_| | (_>  < |_| |
|_| \_|_/_/\_\ /_/_/  |____/ \___/\/____/
```

&NewLine;



# Environnement de Developement avec Nix

- Reproductible  
- Ultra Fiable  
- Fun - or not

---

# whoami

Nicolas SAVOIS

CTO @ Pix

♥️: 
- Elixir 
- Nix

---

# whoami

Nicolas SAVOIS

CTO @ Pix

♥️: 
- Elixir 
- Nix 
- RPGs 🐲 :D

---

# le plan!

Ne pas mourir!

---

# le plan B!

- Nix c'est quoi?
- On plonge dedans !
- Vous avez pris un niveau

---

# le plan B!

- Nix c'est quoi?
- On plonge dedans !
- Vous avez pris un niveau
- Vous avez un nouveau Package Nix dans votre besace

---

# le plan B!

- Nix c'est quoi?
- On plonge dedans !
- Vous avez pris un niveau
- Vous avez un nouveau Package Nix dans votre besace
- et le Dragon est Mort !

---

# Nix c'est quoi? 1/3

- un langage
    - fonctionnelle
    - immutable

---

# Nix c'est quoi? 2/3

- un gestionnaire de paquet (package manager)
    - comme pacman ou apt ou homebrew
    - mais en mieux !
    - pour MacOS et Linux

---

# Nix c'est quoi? 3/3

- une distribution Linux (NixOS)
    - qui utilise Nix comme package manager
    - c'est mon OS

---

# En Gros 

- Nix c'est tout !
- Nix > Nix > Nixos
- Nix > Nixos > Nix
- Nixos > Nix > Nix

Les createurs c'est pas des marketeux...

---

# Let's Dive In !
## Le REPL 

```
nix repl
```

- variable declaration
- array
- struct
- rec
- function declaration
- currying

---

# Let's Dive In !
## Eval Files
```
nix eval
```

- let ... in expression
- split concerns into files and import them
- pattern matching args
- default args

---

# Let's Dive In !
## The First NixShell

- c'est simplement une fonction !

```nix
{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = with pkgs;[ cowsay sl ];
}



```

---

# Let's Dive In !
## More advance NixShell

```nix
{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = with pkgs;[ jdk17 gradle maven cowsay sl ];
  shellHooks = ''
    export FOO="FOOOOOOO"
  '';
}

```

---

# Let's Dive In !
## Pinning Version of everything

```nix

pkgs.stdenv.mkDerivation rec {

  nativeBuildInputs = with pkgs; [ gcc clang cmake ];

  pname = "catimg";

  src = pkgs.fetchFromGitHub {
    owner = "posva";
    repo = "catimg";
    rev = "5e096faa751b8f4eef04ccae923c9aa344dd2e9d";
    sha256 = "OiFWnYgVXBDNPlWlX7TMXO5PB2GwlCaoWK11shfXTSg=";

  };
};
```

---
# Let's Dive In !
## More Pinning of Version

```nix
{
  nixpkgs = fetchTarball {
    name = "nixos-unstable-2021-06-172";
    url = "https://github.com/NixOS/nixpkgs/archive/189a13688782.tar.gz";
    sha256 = "09a027w36x05c8m8rwa7lr2g4sc12hx502xbkxhrpa3vmcryrc51";
  };
}

```

---
# Going Further

- Flakes
  - Ajouter des lockfiles en plus de tout le reste
  - Toujours en version beta

- devenv.sh
  - sucre syntaxique au dessus des nix-shells
  - avec du Yaml en plus ! /joy

---
# Merci !

## Questions?

```
~~~catimg -H 30 ./nix.png

~~~
```



---

# le plan

Development Environment with Nix!

- What is Nix? 5 min
    - Functional Language
        - Repl
    - Package Management Tool
        - Hello World with a derivation
- Why Nix is better than anything else? 5 min
    - immutability
        - using the hello world derivation
    - pureness of dependencies
        - using git as a input
- Anatomy of a Shell.nix 5 min
    - Hello world exemple
- exemple for Java 5 min
    - Java for the project
        - Java version
        - Gradle version
    - Java with the editor config and plugins
- Introduction to Nix Flakes
- same exemple with Flakes and Java App
- Perspective on deployment using Nix.

---


