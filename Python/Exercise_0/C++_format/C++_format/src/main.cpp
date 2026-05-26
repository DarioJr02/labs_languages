#include <charconv>
#include <cstddef>
#include <iostream>
#include <format>
#include <string>
#include <string_view>
#include <cstdlib>
#include <vector>
#include <memory>

class Actor
{
    private:
    std::string m_name{};
    std::size_t m_age{};
    std::string m_summary{};

    public:
    Actor(
    const std::string_view name, 
    std::size_t age, 
    const std::string_view summary) : m_name{name}, m_age{age}, m_summary{summary}
    {

    }

    // getters_const
    const std::string_view get_name_ro() const {return m_name;}
    const std::size_t get_age_ro() const {return m_age;}
    const std::string_view get_summary_ro() const {return m_summary;}

    // getters
    std::string_view get_name_rw() {return m_name;}
    std::size_t get_age_rw() {return m_age;}
    std::string_view get_summary_rw() {return m_summary;}

};

void formatt()
{
    Actor orc{"Yat'u", 38, "Likes play soccer"};

    std::cout << std::format("Hello {}, you are {} old, and your summary is: {}!", orc.get_name_ro(), orc.get_age_ro(), orc.get_summary_ro()) << '\n';
}

void fizzBuzz(std::size_t n = 0)
{
    for (std::size_t n1{n}; (n <= 20) && (n % 2 == 0); ++n)
    {

    }

    std::vector<double> v{0, 3, 4, ,5 ,6, ,6, 7, 8, 9};

    for (auto i{0} : v)
    {
        std::cout << i << '\n';
    }
}



int main() 
{
    formatt();
}
