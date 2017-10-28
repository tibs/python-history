# Run hovercraft to output on http://localhost:8000

.PHONY: default
default: html slides

.PHONY: slides
slides:
	hovercraft python-history.rst slides
	hovercraft just-the-slides.rst just

.PHONY: just
just:
	hovercraft just-the-slides.rst just

.PHONY: show
show:
	echo 'Go to http://localhost:8000 to see the slides'
	hovercraft python-history.rst

.PHONY: show-just
show-just:
	echo 'Go to http://localhost:8000 to see the slides'
	hovercraft just-the-slides.rst

.PHONY: html
html:
	rst2html.py python-history.rst python-history.html
	rst2html.py just-the-slides.rst just-the-slides.html

.PHONY: clean
clean:
	rm -f python-history.html
	rm -f just-the-slides.html
	rm -rf slides
	rm -rf just

.PHONY: help
help:
	@echo 'make              same as: make html slides'
	@echo 'make slides       create slideshow in slides/'
	@echo 'make just         create just-the-slides slideshow in just/'
	@echo 'make show         show slideshow on http://localhost:8000'
	@echo 'make show-just    show just-the-slides slideshow on http://localhost:8000'
	@echo 'make html         create HTML files using rst2html'
	@echo 'make clean        delete HTML files and slide directories'
