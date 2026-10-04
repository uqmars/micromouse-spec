CC=latexmk
#CFLAGS= 
#LDFLAGS=
.PHONY: all
.DEAFAULT_GOAL := all

WASTE_FILES=main.log main.aux main.toc main.out main.fdb_latexmk main.fls

all: latex clean

latex: main.tex
	$(CC) main.tex

clean: $(WASTE_FILES)
	rm $(WASTE_FILES)

