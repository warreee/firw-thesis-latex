#!/bin/sh
exec docker run --rm -i -v $PWD/`dirname $*`:/data thesis pdflatex `basename $*`


