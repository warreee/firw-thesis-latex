FROM ubuntu:trusty
MAINTAINER warreee

RUN apt-get update
RUN apt-get install -yq wget
RUN apt-get install -yq unzip
RUN apt-get install -yq texlive-full
WORKDIR /root
RUN mkdir texmf
WORKDIR /root/texmf
RUN echo boo
ADD ./kulemt .
WORKDIR /data
