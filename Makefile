VERSION ?= $(shell yq '.release.version' config.toml)
PDF := Micromouse_Spec_v$(VERSION).pdf

CC=latexmk -pdf
WASTE_FILES=main.log main.aux main.toc main.out main.fdb_latexmk main.fls version.tex

ifeq ($(strip $(VERSION)),)
$(error Could not determine VERSION)
endif

.PHONY: all version gen_version latex clean
.DEAFAULT_GOAL := all

all: gen_version latex clean

version:
	@echo $(VERSION)

gen_version: config.toml
	printf '\\newcommand{\\rulesversion}{%s}\n' '$(VERSION)' > version.tex

latex: main.tex
	$(CC) main.tex
	cp main.pdf $(PDF)

clean:
	rm -f $(WASTE_FILES)

