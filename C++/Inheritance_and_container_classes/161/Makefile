CXX = g++
CXXFLAGS = -Wall -std=c++20 -g -I. -I./class_Player # Added -I./class_Player

SRCDIR = . # Keep as '.' to find main.cpp, Utesting.cpp, and files within class_Player
BUILDDIR = build
BINDIR = bin

# Find all .cpp files recursively in SRCDIR and its subdirectories
SOURCES = $(shell find $(SRCDIR) -name "*.cpp")

# Generate object file paths in the BUILDDIR, mirroring the source directory structure
OBJECTS = $(patsubst $(SRCDIR)/%.cpp,$(BUILDDIR)/%.o,$(SOURCES))

TARGET = $(BINDIR)/mi_programa

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@mkdir -p $(BINDIR) || true
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $@

$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(dir $@) || true # Ensure directory for object file exists
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILDDIR) $(BINDIR)
	@echo "Limpieza completada."

.PHONY: all clean