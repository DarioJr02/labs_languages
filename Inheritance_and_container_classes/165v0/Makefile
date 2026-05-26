CXX = g++
CXXFLAGS = -Wall -std=c++20 -g -I. -I./class_Example

SRCDIR = .
BUILDDIR = build
BINDIR = bin

# Fuentes explícitas según tu estructura de carpetas
# Se asume que main.cpp contiene la función 'main' principal
# y que Example.cpp es un archivo de implementación que NO contiene su propia función 'main'.
SOURCES = main.cpp \
          class_Example/Example.cpp

OBJECTS = $(patsubst $(SRCDIR)/%.cpp,$(BUILDDIR)/%.o,$(SOURCES))

TARGET = $(BINDIR)/mi_programa

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

