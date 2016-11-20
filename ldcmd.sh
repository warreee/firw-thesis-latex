#!/bin/sh
exec docker run --rm -i -v $PWD:/data t pdflatex $*
