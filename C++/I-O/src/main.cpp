#include <filesystem>
#include <iostream>
#include <fstream>
#include <filesystem>
#include <concepts>
#include <string>
#include <type_traits>
#include <cstdio>

namespace concepts
{
    template<typename T>
    concept iof = std::is_same_v<T, std::ofstream> || std::is_same_v<T, std::ifstream>;
}

void directory(const std::string_view path)
{
    std::filesystem::create_directory(path);

    if (!std::filesystem::exists(path))
    {
        std::cerr << '[' << path << "] - " << "Doesn't exist.\n";
    }
}

template<typename T>
requires concepts::iof<T>
T file(const std::string& file_name)
{
    T f{file_name};

    if (!f)
    {
        std::cerr << '[' << file_name << "] - " << "Doesn't exist.\n";
    }

    return f;
}

void summing_up()
{
    /**
     * @brief Summing_Up
     * 
     * No abrir un archivo que contenga un operador de flujo 2 veces, ni de escritura ni de lectura.
     * No se puede escribir y leer un archivo al mismo tiempo.
     * 
     */
}

int main() 
{
    directory("../../../../io");
    auto fw{file<std::ofstream>("../../../../io/read.md")};
    auto fr{file<std::ifstream>("../../../../io/read.md")};

    std::string strData{}; // Almacenar contenido del archivo leido.
    char ch{};

    fw << "Esta es la primera línea1\n";
    fw << "Esta es la segunda línea2\n";
    fw << "Esta es la tercera línea3\n";
    fw << "Esta es la cuarta línea4\n";
    fw << "Esta es la quinta líneaaaaa5\n";
    fw.close();

    // fr.open("../../../../io/read.md");
    
    fr.seekg(8);
    std::getline(fr, strData);
    std::cout << strData << '\n';

    fr.seekg(11);
    std::getline(fr, strData);
    std::cout << strData << '\n';

    fr.seekg(-3, std::ios::end);
    std::getline(fr, strData);
    std::cout << strData << '\n';

    fr.seekg(-6, std::ios::end);
    std::getline(fr, strData);
    std::cout << strData << '\n';
    
    fr.seekg(0, std::ios::end);
    std::cout << fr.tellg() << '\n';

    // Removemos el archivo o directorio
    if (std::remove("../../../../io/read.md") != 0)
    {
        std::cerr << "Error al borrar: " << "../../../../io/read.md" << '\n';
    }

    if (std::remove("../../../../io") != 0)
    {
        std::cerr << "Error al borrar: " << "../../../../io" << '\n';
    }

}
