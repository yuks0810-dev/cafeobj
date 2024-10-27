# CafeOBJ

## インストール

```sh:bash
$ docker build -t cafeobj-image .
$ docker run -it --rm cafeobj-image
```

## Run CafeOBJ

```sh:bash
$ docker run -it -w /work -v $(pwd):/work cafeobj-image bash
$ cafeobj fact.cafe 
```
