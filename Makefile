default: pull_if_missing
	PRINTINTRODUCTION=true ./dockercmd pdflatex ./almog_cv.tex

no_introduction:
	./dockercmd pdflatex ./almog_cv.tex

pull_if_missing:
	docker image inspect "blang/latex:latest"  >/dev/null 2>&1 || docker pull "blang/latex"
