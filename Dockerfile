FROM ubuntu:trusty
MAINTAINER warreee

RUN apt-get update
RUN apt-get install -yq wget
RUN apt-get install -yq unzip
RUN apt-get install -yq texlive-full
WORKDIR /root
RUN wget "https://github.com/warreee/firw-thesis-latex/blob/master/kulemt/kulemt2.0.zip" 
RUN mkdir texmf
RUN unzip kulemt2.0.zip -d texmf
RUN rm kulemt2.0.zip
WORKDIR /data
