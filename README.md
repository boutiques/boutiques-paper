# How to get a pdf

A pdf is uploaded for every release of the paper:
* [Release 0.1](https://github.com/glatard/boutiques-paper/files/586804/paper.pdf)

See instructions below to create a pdf for the current version.

# How to contribute

Fork the repository, edit ```boutiquespaper.tex``` and ```biblio.bib```, and make a pull-request. 

Add your name and affiliation to the list of co-authors. Contact
tristan.glatard@concordia.ca if you feel that the list or order of
authors should be amended.

Examples of valid contributions: support Boutiques in your platform, port applications to Boutiques, contribute to the Boutiques tools or schema.

# How to give feedback

* General comments: create an issue in this repository.
* Detail comments in the paper: use command ```\note``` in ```boutiquespaper.tex``` as follows: ```\note{John}{This is a comment}```.

# How to generate the pdf

(You may edit ```boutiquespaper.tex``` without generating the pdf if you don't manage to).

## Method 1: Make

0. Install ```pdflatex``` and ```bibtex```
1. Type `make` to compile the document and bibliography.
2. Before committing, type `make clean` to remove extra temporary files

## Method 2: Manual

0. Install ```pdflatex``` and ```bibtex```
1. Compile the document: ```pdflatex -shell-escape boutiquespaper ; pdflatex -shell-escape boutiquespaper``` (yes, twice).
2. Generate the bibliography: ```bibtex boutiquespaper ; pdflatex -shell-escape boutiquespaper``` (yes, once again).

# Latex installation

* On Linux Fedora 24: ```dnf install texlive-bin texlive-bibtex-bin texlive-minted texlive-pdfcomment texlive-collection-fontsrecommended texlive-algorithmicx texlive-framed```. 

