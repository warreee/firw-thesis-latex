#!/bin/sh
exec docker run --rm -i -v $PWD:/data thesis latexmk $*


