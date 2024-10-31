# CafeOBJ

## インストール

```sh:bash
$ docker build -t cafeobj-image .
$ docker run -it --rm cafeobj-image
```

## Run CafeOBJ

† `CafeOBJ` と表示されている部分でコマンドを実行するのではなく、Docker コンテナ内でコマンドを実行する。

```sh:bash
$ docker run -it -w /work -v $(pwd):/work cafeobj-image bash
$ cafeobj fact.cafe 
```
