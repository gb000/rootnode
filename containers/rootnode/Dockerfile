FROM ubuntu:20.04

RUN apt update

ARG DEBIAN_FRONTEND=noninteractive

RUN apt upgrade -y

#Installing some Dependencies
RUN apt install wget tor git python3 python3-pip -y

COPY $PWD/volume/scripts /scripts

RUN chmod 700 /scripts/*

ENTRYPOINT ["/scripts/init.sh"]
