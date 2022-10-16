.PHONY: all
all:
	mkdir output ; true
        mkdir tempout ; true
        pdflatex -output-directory=tempout it3.tex
        pdflatex -output-directory=tempout it3.tex
        pdflatex -output-directory=tempout it3pr.tex
        pdflatex -output-directory=tempout it3pr.tex
	rm tempout/*.aux
	rm tempout/*.log
	rm tempout/*.toc
	rm tempout/*.out
	cd tempout ; python3 ../split2chapters.py ; mv it3pr_Kapitel_*.pdf ../output
