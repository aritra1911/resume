INKSCAPE	=	/usr/bin/inkscape
PDFUNITE	=	/usr/bin/pdfunite

PAGES_SVG	=	page1.svg

PAGES_PDF	=	page1.pdf

.SUFFIXES: .svg .pdf
.PHONY: all clean

all: resume.pdf

resume.pdf: $(PAGES_PDF)
	cp -p $(PAGES_PDF) resume.pdf

.svg.pdf:
	$(INKSCAPE) --export-type=pdf --export-filename=$@ $<

clean:
	rm -f $(PAGES_PDF) resume.pdf
