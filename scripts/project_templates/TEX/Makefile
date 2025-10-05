BUILDDIR=./build

.PHONY: compile
compile: $(BUILDDIR)
	latexmk -pdf -outdir=$(BUILDDIR) main.tex

.PHONY: open
open: $(BUILDDIR)
	xdg-open $(BUILDDIR)/main.pdf

$(BUILDDIR):
	@mkdir $(BUILDDIR)
	@echo "*" > $(BUILDDIR)/.gitignore
	@echo "!.gitignore" >> $(BUILDDIR)/.gitignore


.PHONY : clean
clean: 
	rm -f $(BUILDDIR)/*
