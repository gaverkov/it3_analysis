.PHONY: all
all:
	mkdir -p output
	pdflatex -output-directory=output it3.tex
	pdflatex -output-directory=output it3.tex
	pdflatex -output-directory=output it3pr.tex
	pdflatex -output-directory=output it3pr.tex
	rm output/*.aux
	rm output/*.log
	rm output/*.toc
	rm output/*.out
	python3 split2chapters.py
	mv it3pr_Kapitel_*.pdf output
