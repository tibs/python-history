# Run hovercraft to output on http://localhost:8000

.PHONY: default
default: html slides

.PHONY: slides
slides:
	hovercraft python-history.rst slides

.PHONY: show
show:
	echo 'Go to http://localhost:8000 to see the slides'
	hovercraft python-history.rst

.PHONY: html
html:
	rst2html.py python-history.rst python-history.html

.PHONY: clean
clean:
	rm -f python-history.html
	rm -rf slides

.PHONY: help
help:
	@echo 'make              same as: make html slides'
	@echo 'make slides       create slideshow in slides/'
	@echo 'make show         show slideshow on http://localhost:8000'
	@echo 'make html         create python-history.html using rst2html'
	@echo 'make clean        delete python-history.html and slides/'
