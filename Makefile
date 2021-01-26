OPTIONS=-shell-escape
TOCLEAN=*aux *bbl *blg *lof *lol *out *toc *xml *lot *log *ilg *ind *acn *glo *ist main-blx.bib *acr *alg *glg *gls *pyg _minted*
all: clean
	@texfot --ignore="This is" pdflatex -interaction=batchmode  -draftmode $(OPTIONS) main	
	@texfot	--ignore="This is" bibtex main
	@texfot	--ignore="This is" pdflatex -interaction=batchmode -draftmode $(OPTIONS)  main
	@texfot	--ignore="This is" makeglossaries main
	@texfot	--ignore="This is" pdflatex -interaction=batchmode $(OPTIONS) main

verbose: clean
	pdflatex  -draftmode $(OPTIONS) main	
	bibtex main
	pdflatex -draftmode $(OPTIONS)  main
	makeglossaries main
	pdflatex $(OPTIONS) main


clean:
	rm -rf $(TOCLEAN)
	(cd Chapters; rm -rf $(TOCLEAN))
	(cd FrontBackmatter; rm -rf $(TOCLEAN))
