CXX=g++
OPT=-O0
DEPFLAGS=-MP -MD

BUILDDIR=./build
SRCDIRS=. src
INCLUDEDIRS=. include

CPPFILES:=$(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.cpp))
OBJFILES:=$(addprefix $(BUILDDIR)/, $(addsuffix .o, $(basename $(notdir $(CPPFILES)))))
DEPFILES:=$(addprefix $(BUILDDIR)/, $(addsuffix .d, $(basename $(notdir $(CPPFILES)))))

BINARY=$(BUILDDIR)/XXXXX

CXXFLAGS= $(OPT) $(DEPFLAGS) -g $(foreach dir, $(INCLUDEDIRS), -I$(dir))

all: $(BINARY)

$(BINARY) : $(OBJFILES)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(BUILDDIR)/%.o : %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

-include $(DEPFILES)

.PHONY : clean
clean: 
	rm $(BINARY)
	rm $(DEPFILES)
	rm $(OBJFILES)
	rm compile_commands.json
