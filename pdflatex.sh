#!/bin/sh
if [ -x "$(command -v pdflatex)" ]; then
  pdflatex "$@"
else
  ./dockercmd pdflatex "$@"
fi
