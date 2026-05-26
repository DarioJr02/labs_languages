CXX = g++
CXXFLAGS = -Wall -std=c++20 -g -I. -I./class_Character # Adaptado el include y añadido -g

SRCDIR = .
BUILDDIR = build
BINDIR = bin

SOURCES = $(shell find $(SRCDIR) -name "*.cpp") # Se mantiene la búsqueda genérica
OBJECTS = $(patsubst $(SRCDIR)/%.cpp,$(BUILDDIR)/%.o,$(SOURCES))

TARGET = $(BINDIR)/mi_programa # Un único objetivo de programa

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@mkdir -p $(BINDIR) || true
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $@

$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILDDIR) $(BINDIR)
	@echo "Limpieza completada."

.PHONY: all clean

