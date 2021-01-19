
all:
	pdflatex -interaction=batchmode -draftmode main	
	bibtex main
	pdflatex -interaction=batchmode -draftmode  main
	makeglossaries main
	pdflatex -interaction=batchmode main


clean:
	rm -f *aux *bbl *blg *lof *lol *out *toc *xml *lot *log *ilg *ind *acn *glo *ist main-blx.bib *acr *alg *glg *gls
	(cd Chapters; rm -f *aux *bbl *blg *lof *lol *out *toc *xml *lot *log *ilg *ind *acn *glo *ist *acr *alg *glg *gls)
	(cd FrontBackmatter; rm -f *aux *bbl *blg *lof *lol *out *toc *xml *lot *log *ilg *ind *acn *glo *ist *acr *alg *glg *gls)
