BUILDDIR=./build
HANDINNAME=<project_name>

#.PHONY: buildandrun
#buildandrun: binary
#	$(BINARY)

.PHONY: binary
binary: $(BUILDDIR)
	find -name "*.java" > .sources
	javac -d $(BUILDDIR) @.sources

.PHONY: run
run: binary
	@java -cp $(BUILDDIR) HelloWorld 

.PHONY: zip
zip: $(BUILDDIR)
	@mkdir $(HANDINNAME)
	@rsync -a --exclude '.git' --exclude "$(HANDINNAME)"  --include '*/' --include "**.java" --include "**.txt" --exclude '*' -m . $(HANDINNAME)/
	@zip -r $(HANDINNAME).zip $(HANDINNAME) 
	@rm -rf $(HANDINNAME)

$(BUILDDIR):
	@mkdir $(BUILDDIR)
	@echo "*" > $(BUILDDIR)/.gitignore
	@echo "!.gitignore" >> $(BUILDDIR)/.gitignore

.PHONY : clean
clean: 
	@-rm -rf $(HANDINNAME)
	@-rm -rf $(BUILDDIR)
	@-rm -r $(HANDINNAME).zip
	@-rm -r	.sources 
