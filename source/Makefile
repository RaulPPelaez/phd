OPTIONS=-shell-escape
TOCLEAN=*aux *bbl *blg *lof *lol *out *toc *xml *lot *log *ilg *ind *acn *glo *ist main-blx.bib *acr *alg *glg *gls *pyg _minted* main.listing
all: clean
	(cd gfx && bash agr2eps.bash)
	@texfot --ignore="This is" pdflatex -interaction=batchmode  -draftmode $(OPTIONS) main	
	@texfot	--ignore="This is" bibtex main
	@texfot	--ignore="This is" bibtex main1-blx
	@texfot	--ignore="This is" pdflatex -interaction=batchmode -draftmode $(OPTIONS)  main
	@texfot	--ignore="This is" makeglossaries main
	@texfot	--ignore="This is" bibtex main
	@texfot	--ignore="This is" pdflatex -interaction=batchmode -draftmode $(OPTIONS)  main
	@texfot	--ignore="This is" pdflatex -interaction=batchmode $(OPTIONS) main

verbose: clean
	(cd gfx && bash agr2eps.bash)
	pdflatex  -draftmode $(OPTIONS) main	
	bibtex main
	bibtex main1-blx
	pdflatex -draftmode $(OPTIONS)  main
	makeglossaries main
	bibtex main
	pdflatex -draftmode $(OPTIONS)  main
	pdflatex $(OPTIONS) main

rebuild:
	@texfot	--ignore="This is" pdflatex -interaction=batchmode $(OPTIONS) main

ship: verbose
	@ps2pdf -dPDFSETTINGS=/ebook main.pdf tesis_`date +%d%h%y`.pdf

clean:
	rm -rf $(TOCLEAN)
