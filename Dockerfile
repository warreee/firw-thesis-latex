FROM ubuntu:trusty
MAINTAINER warreee

RUN apt-get update
RUN apt-get install -yq wget
RUN apt-get install -yq unzip
RUN apt-get install -yq texlive-full
RUN apt-get install fastjar
WORKDIR /root
RUN mkdir texmf
WORKDIR /root/texmf
RUN wget "https://github.com/warreee/firw-thesis-latex/blob/master/kulemt/kulemt-2.0.zip" 
RUN jar xvf kulemt-2.0.zip 
RUN rm kulemt-2.0.zip
WORKDIR /data
