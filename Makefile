CC=latexmk
#CFLAGS= 
#LDFLAGS=
.PHONY: all
.DEAFAULT_GOAL := all

WASTE_FILES=main.log main.aux main.toc main.out main.fdb_latexmk main.fls version.tex

all: gen_version latex clean

gen_version: config.toml scripts/gen-version-tex.sh
	scripts/gen-version-tex.sh

latex: main.tex
	$(CC) main.tex

clean: $(WASTE_FILES)
	rm $(WASTE_FILES)

