all: compile clean

restart:
	rm -f main.pdf

compile: restart
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean: restart
	rm -f *.bbl *.log *.lot *.toc *.out *.blg *.aux *.txt
