#!/bin/sh
DIR=`dirname $0`
$DIR/latexmk.sh $1 
$DIR/pdflatex.sh $1 

