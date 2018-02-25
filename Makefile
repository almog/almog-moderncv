default:
	docker image inspect "blang/latex:latest"  >/dev/null 2>&1 || docker pull "blang/latex"
	./dockercmd pdflatex ./almog_cv.tex
