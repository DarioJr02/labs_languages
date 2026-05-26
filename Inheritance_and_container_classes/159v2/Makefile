# Define el compilador C++
CXX = g++

# Define las banderas de compilación
# -Wall: Habilita todas las advertencias
# -std=c++20: Usa el estándar C++20
# -I.: Incluye el directorio actual para buscar archivos de cabecera
# -I./class_Container: Incluye el directorio class_Container para buscar archivos de cabecera
CXXFLAGS = -Wall -std=c++20 -I. -I./class_Container

# Define los directorios para los archivos fuente, de construcción y binarios
SRCDIR = .
BUILDDIR = build
BINDIR = bin

# Encuentra todos los archivos .cpp en el directorio fuente y sus subdirectorios
# Esto incluye main.cpp y Utesting.cpp en la raíz, y Container.cpp en class_Container
SOURCES = $(shell find $(SRCDIR) -name "*.cpp")

# Genera la lista de archivos objeto (.o) en el directorio de construcción
# Reemplaza la ruta del archivo fuente con la ruta del archivo objeto en el directorio BUILDDIR
OBJECTS = $(patsubst $(SRCDIR)/%.cpp,$(BUILDDIR)/%.o,$(SOURCES))

# Define el nombre y la ruta del ejecutable final
TARGET = $(BINDIR)/mi_programa

# Regla por defecto: construye el objetivo principal (el ejecutable)
all: $(TARGET)

# Regla para construir el ejecutable
# Depende de todos los archivos objeto
$(TARGET): $(OBJECTS)
	# Crea el directorio bin si no existe. El "|| true" evita que falle si ya existe.
	@mkdir -p $(BINDIR) || true
	# Enlaza todos los archivos objeto para crear el ejecutable
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $@

# Regla de patrón para compilar archivos .cpp en archivos .o
# $(BUILDDIR)/%.o: El objetivo es un archivo .o en el directorio BUILDDIR
# $(SRCDIR)/%.cpp: El prerrequisito es el archivo .cpp correspondiente en el directorio SRCDIR
$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	# Crea el directorio de salida para el archivo .o si no existe
	@mkdir -p $(dir $@)
	# Compila el archivo .cpp en un archivo .o
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Regla para limpiar los archivos generados (objetos y binarios)
clean:
	# Elimina recursivamente los directorios de construcción y binarios
	rm -rf $(BUILDDIR) $(BINDIR)
	# Mensaje de confirmación de limpieza
	@echo "Limpieza completada."

# .PHONY: Declara objetivos que no corresponden a nombres de archivo reales
# Esto asegura que 'make all' y 'make clean' siempre se ejecuten, incluso si existen archivos con esos nombres
.PHONY: all clean
