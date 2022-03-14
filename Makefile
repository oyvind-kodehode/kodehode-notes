# Makefile
# File ID: d2cf4d9c-a37d-11ec-adc6-5507122e1adf

HTMLFILES  =
HTMLFILES += README.html
HTMLFILES += notes.html
PDFFILES  =
PDFFILES += README.pdf
PDFFILES += notes.pdf

.PHONY: all
all:

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
		&& tidy -q -o /dev/null *.html; \
	fi
