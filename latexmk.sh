#!/bin/sh
echo $PWD/`dirname $*`
exec docker run --rm -i -v $PWD/`dirname $*`:/data thesis latexmk `basename $*`

