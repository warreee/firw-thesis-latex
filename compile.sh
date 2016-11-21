#!/bin/sh
DIR=`dirname $0`
$DIR/latexmk.sh $*
$DIR/pdflatex.sh $*
