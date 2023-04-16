# Demo repo for Devoxx France 2023

## Content

- `./demo/` : some examples of nix language
- `./examples` : examples of a java dev env
- `./live` : for was produced during the tools in action
- `./live-backup` : produced during repetitions, more complete than the live one
- `./default.nix` : nix-shell for starting the slides


## Running the slides
```
nix-shell # enter the dev enx
slides prez.md # run the presentation
```

## Running the examples


```
cd live # move in the live directory
```

Entering the first shell 
```
nix-shell first-shell.nix
sl
man sl # even the man is avaible with the package
sl -20adeFlw # because now you know
sl -Ge # because you love french train
```

Building the first packagem
```
nix-build first-package.nix
```

Building the catimg directive
```
nix-build cating.nix
ls ./result/bin
./result/bin/catimg ../DnD.png
```


