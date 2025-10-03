BUILDDIR=./build

#.PHONY: buildandrun
#buildandrun: binary
#	$(BINARY)

.PHONY: binary
binary: $(BUILDDIR)
	javac -d $(BUILDDIR) ./Main.java

.PHONY: run
run: binary
	@java -cp $(BUILDDIR) <project_name>

$(BUILDDIR):
	@mkdir $(BUILDDIR)
	@echo "*" > $(BUILDDIR)/.gitignore
	@echo "!.gitignore" >> $(BUILDDIR)/.gitignore

.PHONY : clean
clean: 
	rm -rf $(BUILDDIR)
