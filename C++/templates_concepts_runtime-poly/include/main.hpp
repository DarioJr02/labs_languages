#pragma once
#include <type_traits>
#ifndef MAIN_HPP
#define MAIN_HPP

#include <concepts>
#include <fstream>
#include <filesystem>

namespace concpts
{
    template<typename T>
    concept iof = std::is_same_v<T, std::ifstream> || std::is_same_v<T, std::ofstream>;
}

void msg_format(const std::string_view msg, bool status);
void rw(std::ofstream of);

#endif