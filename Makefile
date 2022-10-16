.PHONY: all
all:
	mkdir output ; true
	pdflatex -output-directory=output it3.tex
	pdflatex -output-directory=output it3.tex
	pdflatex -output-directory=output it3pr.tex
	pdflatex -output-directory=output it3pr.tex
	rm output/*.aux
	rm output/*.log
	rm output/*.toc
	rm output/*.out
	cd output ; python3 ../split2chapters.py
