CXX = g++
CXXFLAGS = -Wall -std=c++20 -g -I. -I./class_Avatar

SRCDIR = .
BUILDDIR = build
BINDIR = bin

# Fuentes explícitas según tu estructura de carpetas
# Se asume que main.cpp contiene la función 'main' principal
# y que Avatar.cpp y Utesting.cpp son archivos de implementación
# que NO contienen su propia función 'main'.
SOURCES = main.cpp \
          class_Avatar/Avatar.cpp \
          Utesting.cpp

OBJECTS = $(patsubst %.cpp,$(BUILDDIR)/%.o,$(SOURCES))

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

.PHONY: all clean

