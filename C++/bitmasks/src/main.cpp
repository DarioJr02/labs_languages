#include <iostream>
#include "../header/main.hpp"
#include <algorithm>
#include <cctype>
#include <algorithm>
#include <string>
#include <string_view>
#include <map>


bool s_invalid_characters(const std::string_view name)
{
    return (std::all_of(name.begin(), name.end(), 
    [](char ch)
    { return (std::isalnum(ch) || std::isspace(ch)); }));
}

bool s_space_count(const std::string_view name)
{
    return (std::count_if(name.begin(), name.end(), [](char ch)
    { return (std::isspace(ch)); }));
}

bool s_full_validation(const std::string_view name)
{
    return (name.length() < 2 || s_invalid_characters(name) || s_space_count(name) > 1);
}

bool valid_input(const std::string_view name, const std::string_view mask)
{
    if (name.length() != mask.length())
    {
        return false;
    }

    static const std::map<char, int (*)(int)> validators{

        { '#', &std::isdigit },
        { '_', &std::isspace },
        { '@', &std::isalpha },
        { '?', [](int) {return 1;} }
    };

    return std::equal(name.begin(), name.end(), mask.begin(), mask.end(), [](char ch, char mask) -> bool {

        if (auto finded{validators.find(mask)}; finded != validators.end())
        {
            return (*finded->second)(ch);
        }
        else
        {
            return (ch == mask);
        }
    });


}

bool s_validation5(const std::string_view name)
{
    return false;
}

int main() 
{
    std::string name{};
    do
    {
        std::cout << "Ingresa tu nº de telefono (###) ###-####: ";
        std::getline(std::cin, name);
    } while (!valid_input(name, "(###) ###-####"));
    
    std::cout << "tu nº de telefono es: " << name << '\n';
    return 0;
}
