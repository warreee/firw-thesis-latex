FROM ubuntu:trusty
MAINTAINER warreee

RUN apt-get update
RUN apt-get install -yq wget
RUN apt-get install -yq unzip
RUN apt-get install -yq texlive-full
WORKDIR /root
RUN wget "ftp://ftp.esat.kuleuven.be/latex/kulemt/kulemt-1.8a-tds.zip" 
RUN mkdir texmf
RUN unzip kulemt-1.8a-tds.zip -d texmf
RUN rm -rf texmf/doc
RUN rm kulemt-1.8a-tds.zip
WORKDIR /data
