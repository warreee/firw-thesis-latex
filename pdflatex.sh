#!/bin/sh
exec docker run --rm -i -v $PWD/`dirname $1`:/data thesis pdflatex `basename $1`
