FROM  ubuntu:22.04

RUN apt update

RUN apt install -y pkg-config
RUN apt install -y build-essential 
RUN apt install -y zlib1g-dev 
RUN apt install -y libncurses5-dev 
RUN apt install -y libgdbm-dev 
RUN apt install -y libnss3-dev 
RUN apt install -y libssl-dev 
RUN apt install -y libreadline-dev 
RUN apt install -y libffi-dev 
RUN apt install -y libsqlite3-dev
RUN apt install -y wget 
RUN apt install -y libbz2-dev

WORKDIR /
RUN wget https://www.python.org/ftp/python/3.12.6/Python-3.12.6.tgz
RUN tar -xvf Python-3.12.6.tgz 

WORKDIR /Python-3.12.6
RUN ./configure --enable-optimizations

RUN make altinstall

ENV PATH="${PATH}:/Python-3.12.6"

WORKDIR /teste