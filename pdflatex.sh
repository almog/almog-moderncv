#!/bin/sh
if [ -x "$(command -v pdflatex)" ]; then
  echo foo
  pdflatex "$@"
else
  ./dockercmd pdflatex "$@"
fi
