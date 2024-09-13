# configuration mostly taken from:
# https://github.com/gwu-cs-os/evening_os_hour/tree/master/f19/10.2-makefiles/03_featureful_makefile
CXX=g++
OPT=-O0
DEBUG=-g
DEPFLAGS=-MP -MD

BUILDDIR=./build
BINARY=$(BUILDDIR)/XXXXX
SRCDIRS=. src
INCLUDEDIRS=. include

CXXFLAGS= $(OPT) $(DEPFLAGS) $(DEBUG) $(foreach dir, $(INCLUDEDIRS), -I$(dir))

CPPFILES:=$(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.cpp))

OBJFILES:=$(patsubst %.cpp, %.o, $(CPPFILES))
OBJFILES:=$(addprefix $(BUILDDIR)/, $(OBJFILES))
OBJFILES:=$(patsubst ./,,$(OBJFILES))

DEPFILES:=$(patsubst %.cpp, %.d, $(CPPFILES))
DEPFILES:=$(addprefix $(BUILDDIR)/, $(DEPFILES))
DEPFILES:=$(patsubst ./,,$(DEPFILES))

# targets

all: $(BINARY)

$(BINARY) : $(OBJFILES)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(BUILDDIR)/%.o : %.cpp
	mkdir -p $(addprefix $(BUILDDIR)/, $(dir $<))
	$(CXX) $(CXXFLAGS) -c -o $@ $<

-include $(DEPFILES)

.PHONY : clean
clean: 
	rm -f $(BINARY)
	rm -f $(DEPFILES)
	rm -f $(OBJFILES)
	rm -f compile_commands.json
