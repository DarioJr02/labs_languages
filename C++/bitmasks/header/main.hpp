#pragma once
#ifndef MAIN_HPP
#define MAIN_HPP

#include <string>
#include <string_view>

bool s_invalid_characters(const std::string_view name);
bool s_space_count(const std::string_view name);
bool s_full_validation(const std::string_view name);
bool valid_input(const std::string_view name, const std::string_view mask);
bool s_validation5(const std::string_view name);

#endif