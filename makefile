LATEX = pdflatex
TEX = boutiquespaper
BIBLIO = biblio
BIBTEX = bibtex

default: $(TEX).tex $(BIBLIO).bib
	$(RM) -f  *.blg *.dvi *.log *.toc *.lof *.lot *.cb *.bbl *.brf *.out *.aux $(TEX).pdf;
	$(LATEX) -shell-escape $(TEX); $(LATEX) -shell-escape $(TEX); $(BIBTEX) $(TEX); $(LATEX) -shell-escape $(TEX); $(LATEX) -shell-escape $(TEX);
	open $(TEX).pdf &

clean:
	$(RM) -rf *.aux *.blg *.dvi *.log *.toc *.lof *.lot *.cb *.bbl $(TEX).ps *~ *.out *.upa *.upb _minted-*;

check:
	@echo "Passing the check will cause make to report Error 1.";
	$(LATEX) $(TEX)  | grep -i undefined;
