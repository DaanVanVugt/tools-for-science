

pdf:
	pandoc talk.md --slide-level 2 -t beamer -o talk.tex
	latexmk -xelatex -pdf main.tex


handout:
	pandoc -s talk.md --latex-engine=xelatex -V geometry:margin=1in -o handout.pdf
