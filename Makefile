all: tools.pdf handout.pdf


tools.pdf: tools.md tools.tex Makefile
	pandoc tools.md --slide-level 2 -t beamer -o talk.tex
	latexmk -xelatex -pdf tools.tex


handout.pdf: tools.md Makefile
	pandoc -s tools.md --latex-engine=xelatex -V geometry:margin=1in -o handout.pdf

clean: 
	latexmk -C tools.tex
	rm -f *.pdfsync
	rm -rf *~ *.tmp

.PHONY:
	clean all
