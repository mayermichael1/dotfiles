OPT=-O0
DEBUG=-g
LIBS=
FLAGS=

BUILDDIR=./build
BINARY=$(BUILDDIR)/XXXXX
INCLUDEDIRS=-I.

binary: $(BUILDDIR)
	g++ main.cpp $(OPT) $(DEBUG) $(LIBS) $(FLAGS) $(INCLUDEDIRS) -o $(BINARY) 

$(BUILDDIR):
	@mkdir $(BUILDDIR)
	@echo "*" > $(BUILDDIR)/.gitignore
	@echo "!.gitignore" >> $(BUILDDIR)/.gitignore

.PHONY : clean
clean: 
	rm -f $(BINARY)
	rm -f compile_commands.json
