FROM ubuntu:20.04

RUN apt update

ARG DEBIAN_FRONTEND=noninteractive

RUN apt upgrade -y

#Installing some Dependencies
RUN apt install -y wget tor git python3 python3-pip gettext \
autoconf automake build-essential git libtool libgmp-dev \
libsqlite3-dev python3 python3-mako net-tools zlib1g-dev libsodium-dev 

COPY $PWD/volume/scripts /scripts

RUN chmod 700 /scripts/*

ENTRYPOINT ["/scripts/init.sh"]
