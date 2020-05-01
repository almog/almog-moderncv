#!/bin/sh

export TEXINPUTS="./packages:"

if [ -x "$(command -v pdflatex)" ]; then
  pdflatex "$@"
else
	docker image inspect "blang/latex:latest"  >/dev/null 2>&1 || docker pull "blang/latex"
  ./dockercmd pdflatex -output-directory=logs "$@" 
  mv logs/*.pdf ./
fi
