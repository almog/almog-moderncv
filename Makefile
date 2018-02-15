default:
	docker pull "blang/latex"
	./dockercmd pdflatex ./almog_cv.tex
