#include <filesystem>
#include <fstream>
#include <iostream>
#include "../include/main.hpp"
#include <string_view>
#include <string>
#include <string_view>
#include <cstdlib>

void msg_format(const std::string_view msg, bool status)
{
    std::string msg_format{'[' + std::string{msg} + "] - " + (status ? " Created." : "Not created.")};
    std::ostream& buff_msg{(status ? std::cout : std::cerr)};

    buff_msg << msg_format << '\n';
}

template<typename T>
requires concpts::iof<T>
T mkfile(const std::string& path)
{
    T iof{path};

    if (!iof)
    {
        msg_format(path, false);
    }
    else 
    {
        msg_format(path, true);
    }

    return iof;
}


void rw(std::ofstream of)
{

}

int main() 
{
    std::filesystem::create_directory("../../../../PPP");
    
    std::ofstream fst{mkfile<std::ofstream>("../../../../PPP/Ptst.md")};

    fst << "First Line.\n"; // Si no hay salto de línea, en L:64 guarda en el buffer todo el contenido hasta que haya algńu salto de línea.
    fst << "Second Line.\n";
    fst << "Third Line.\n";
    fst << "Fourth Line.\n";
    fst << "Five Line.\n";
    fst << "Sixth Line.\n";
    fst << "Seventh Line.\n";
    fst << "Eigth Line.\n";

    fst.close();

    std::ifstream ifst{"../../../../PPP/Ptst.md"};
    std::string strData{};

    ifst.seekg(6, std::ios::beg);
    std::getline(ifst, strData);
    std::cout << strData << '\n';

    ifst.seekg(3, std::ios::cur);
    std::getline(ifst, strData);
    std::cout << strData << '\n';

    ifst.seekg(6, std::ios::cur);
    std::getline(ifst, strData);
    std::cout << strData << '\n';

    ifst.seekg(8, std::ios::cur);
    std::getline(ifst, strData);
    std::cout << strData << '\n';

    ifst.seekg(4, std::ios::cur);
    std::getline(ifst, strData);
    std::cout << strData << '\n';

    ifst.seekg(1, std::ios::cur);
    std::getline(ifst, strData);
    std::cout << strData << '\n';


    return 0;
}
