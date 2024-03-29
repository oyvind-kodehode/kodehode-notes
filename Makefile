# Makefile
# File ID: d2cf4d9c-a37d-11ec-adc6-5507122e1adf

ALLHTMLFILE = all.html
ALLMDFILE = all.md
ALLPDFFILE = all.pdf
HTMLFILES  =
HTMLFILES += README.html
HTMLFILES += css.html
HTMLFILES += flexbox.html
HTMLFILES += html.html
HTMLFILES += javascript.html
HTMLFILES += notes.html
HTMLFILES += pwa.html
PDFFILES  =
PDFFILES += README.pdf
PDFFILES += css.pdf
PDFFILES += flexbox.pdf
PDFFILES += html.pdf
PDFFILES += javascript.pdf
PDFFILES += notes.pdf
PDFFILES += pwa.pdf

.PHONY: all
all:

$(ALLMDFILE): FORCE
	rm -f $(ALLMDFILE)
	for f in *.md; do \
		cat $$f >>$(ALLMDFILE); \
		echo >>$(ALLMDFILE); \
	done

%.html: FORCE
	test -e "$*.md"
	@echo '<!DOCTYPE html>' >$@.tmp
	@echo '<html>' >>$@.tmp
	@echo '<head>' >>$@.tmp
	@echo '<meta charset="UTF-8" />' >>$@.tmp
	@echo '<title>$*</title>' >>$@.tmp
	@echo '</head>' >>$@.tmp
	@echo '<body>' >>$@.tmp
	cmark --unsafe $*.md >>$@.tmp
	@if test -n "$$(git log -1 --format=%h $*.md 2>/dev/null)"; then \
		(echo 'Generated from `$*.md`'; \
		git log -1 --format='revision `%h` (%ci)' \
		    $*.md) | cmark >>$@.tmp; \
	fi
	@echo '</body>' >>$@.tmp
	@echo '</html>' >>$@.tmp
	mv $@.tmp $@

%.pdf: FORCE
	$(MAKE) $*.html
	wkhtmltopdf $*.html $@

.PHONY: clean
clean:
	rm -f $(ALLPDFFILE) $(ALLHTMLFILE) $(ALLMDFILE)
	rm -f $(PDFFILES)
	rm -f $(HTMLFILES)

.PHONY: FORCE
FORCE:

.PHONY: html
html: $(HTMLFILES)

.PHONY: pdf
pdf: $(PDFFILES)

.PHONY: test
test:
	if ls *.html >/dev/null 2>&1; then \
		xmllint --noout *.html \
		&& tidy -q -o /dev/null *.html \
		|| exit 1; \
	fi
