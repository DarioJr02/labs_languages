#pragma once
#ifndef MAIN_HPP
#define MAIN_HPP

#include <string>
#include <string_view>

void directory(const std::string_view path);
auto file(const std::string& file_name); 
void read();
void write();

#endif