# Kam skopiramo delovno verzijo.
PUBLISHDIR = lisa.andrej.com:/var/www/andrej.com/zapiski/MAT-LMN-2017

# Vse LaTeX datoteke, razen verzija.tex, ki jo generiramo sami, in glavnih datotek
LATEXFILES = \
	dokazovanje.tex \
	indukcija.tex \
	kardinalna-stevila.tex \
	konstrukcije.tex \
	kumulativna-hierarhija.tex \
	logika.tex \
	main.tex \
	macros.tex \
	matematicno-izrazanje.tex \
	ordinalna-stevila.tex \
	preproste-mnozice.tex \
	preslikave.tex \
	razlaga-makrojev.tex \
	relacije.tex \
	stevilske-mnozice.tex \
	strukture.tex

default: ucbenik-lmn.pdf

ucbenik-lmn.pdf: verzija.tex $(LATEXFILES)
	latexmk -pdf ucbenik-lmn.tex

ucbenik-lmn-delovna-verzija.pdf: verzija.tex $(LATEXFILES)
	latexmk -f -pdf ucbenik-lmn-delovna-verzija.tex

verzija.tex:
	/bin/echo -n '\newcommand{\OPTversion}{' > verzija.tex
	git describe --always --long >> verzija.tex
	/bin/echo -n '}' >> verzija.tex

publish: ucbenik-lmn-delovna-verzija.pdf
	scp ucbenik-lmn-delovna-verzija.pdf $(PUBLISHDIR)

clean: verzija.tex
	latexmk -C

.PHONY: verzija.tex
