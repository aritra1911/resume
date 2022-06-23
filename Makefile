INKSCAPE	=	/usr/bin/inkscape
PDFUNITE	=	/usr/bin/pdfunite

PAGES_SVG	=	page1.svg\
			page2.svg\
			page3.svg\
			page4.svg

PAGES_PDF	=	page1.pdf\
			page2.pdf\
			page3.pdf\
			page4.pdf

.SUFFIXES: .svg .pdf
.PHONY: all clean

all: resume.pdf

resume.pdf: $(PAGES_PDF)
	$(PDFUNITE) $(PAGES_PDF) $@

.svg.pdf:
	$(INKSCAPE) --export-type=pdf --export-filename=$@ $<

clean:
	rm -f $(PAGES_PDF) resume.pdf
