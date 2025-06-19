#----------------------------------------------------------------------
# Makefile for building readable versions of this Internet Draft
# 2025-06-19 liman

SRCS=draft-liman-tld-names.xml

.SUFFIXES: .html .txt

.PHONY: txt html clean

draft-liman-tld-names.txt txt: $(SRCS)
	@xml2rfc --v3 --text $<

draft-liman-tld-names.html html: $(SRCS)
	@xml2rfc --v3 --html $<

clean:
	@rm -f draft-liman-tld-names.txt draft-liman-tld-names.html *~
