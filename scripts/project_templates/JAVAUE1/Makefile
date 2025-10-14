BUILDDIR=./build
HANDINNAME=k12510380_UE

#.PHONY: buildandrun
#buildandrun: binary
#	$(BINARY)

.PHONY: binary
binary: $(BUILDDIR)
	javac -d $(BUILDDIR) ./HelloWorld.java

.PHONY: run
run: binary
	@java -cp $(BUILDDIR) HelloWorld 

.PHONY: zip
zip: $(BUILDDIR)
	@mkdir $(HANDINNAME)
	@cp *.java $(HANDINNAME)/ 2> /dev/null || :
	@cp *.txt $(HANDINNAME)/ 2> /dev/null || :
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
