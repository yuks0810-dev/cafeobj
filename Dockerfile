# docker build -t cafeobj-image .
# docker run -it --rm cafeobj-image

# ベースイメージとしてUbuntuを使用
FROM ubuntu:20.04

# 必要なパッケージのインストール
RUN apt-get update && \
    apt-get install -y build-essential autoconf automake libtool bison flex git wget sbcl && \
    apt-get clean

# CafeObjのソースコードを取得
RUN git clone https://github.com/CafeOBJ/cafeobj.git /opt/cafeobj

# 作業ディレクトリの設定
WORKDIR /opt/cafeobj

# CafeObjのビルドとインストール
RUN cd /opt/cafeobj && \
    ./configure && \
    make && \
    make install

# CafeObjを実行できるようにするため、デフォルトのコマンドを設定
CMD ["cafeobj"]
