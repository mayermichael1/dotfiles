BUILDDIR=./build

.PHONY: compile
compile: $(BUILDDIR)
	latexmk -pdf -outdir=$(BUILDDIR) test.tex

$(BUILDDIR):
	@mkdir $(BUILDDIR)
	@echo "*" > $(BUILDDIR)/.gitignore
	@echo "!.gitignore" >> $(BUILDDIR)/.gitignore


.PHONY : clean
clean: 
	rm -f $(BUILDDIR)/*
