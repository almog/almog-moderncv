#!/bin/sh
if [ -x "$(command -v pdflatex)" ]; then
  pdflatex "$@"
else
	docker image inspect "blang/latex:latest"  >/dev/null 2>&1 || docker pull "blang/latex"
  ./dockercmd pdflatex "$@"
fi
