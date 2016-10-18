# How to contribute

Fork the repository, edit ```paper.tex``` and other files directly, and make a pull-request. 

Add your name and affiliation to the list of co-authors. Contact
tristan.glatard@concordia.ca if you feel that the list or order of
authors should be amended.

# How to add comments

Use command ```\note``` in ```paper.tex``` as follows: ```\note{John}{This is a comment}```.

# How to generate the pdf

0. Install ```pdflatex``` and ```bibtex```
1. Compile the document: ```pdflatex -shell-escape paper ; pdflatex -shell-escape paper``` (yes, twice).
2. Generate the bibliography: ```bibtex paper ; pdflatex -shell-escape paper``` (yes, once again).

