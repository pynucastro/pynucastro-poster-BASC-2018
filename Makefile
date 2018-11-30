all:
	@echo "Compiling bibliography style" && latex customunsrt.dbj.txt > /dev/null
	@echo "Compiling with pdflatex" && pdflatex main.tex > /dev/null
	@echo "Compiling references with bibtex" && bibtex main > /dev/null
	@echo "Linking references with pdflatex" && pdflatex main.tex > /dev/null
	@echo "Linking references with pdflatex" && pdflatex main.tex > /dev/null

clean:
	@rm -rf *.aux *.log *.nav *.out *.pdf *.snm *.toc *.bbl *.blg *.vrb *~ || exit 0
