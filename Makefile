TexFiles := base.tex \
	content.tex \
	minted.tex

base.pdf: $(TexFiles)
	latexmk -quiet -pdf -outdir=build -shell-escape base.tex
	cp build/base.pdf .
