#include "Header.h"

struct A
{
    private:
    double m_number{};

    public:

    A(double number = 0.0) : m_number{number}
    {} 

    void foo()
    {
        std::cout << "A foo." << '\n';
    }
};

struct B : private A
{
    private:
    double m_number{};

    public:

    B(double number = 0.0) : m_number{number}
    {}

    void foo()
    {
        std::cout << "B foo." << '\n';
    }
};

struct C : public A, public B
{
    private:
    std::vector<double> m_member{};

    public:
    C(std::initializer_list<double> list) : m_member{list}
    {

    } 

    // Getters
    const std::vector<double>& getMember() const {return m_member;}

};

void test0()
{
    B b{793.8};
    std::cout << sizeof(b) << '\n';


    C c{{99.5, 107.10, 56.9}};

    for (std::size_t cont{0}; cont < c.getMember().size(); ++cont )
    {
        std::cout << c.getMember()[cont] << ' ';
    }
    std::cout << '\n';

    c.foo();

}



void tes1()
{

}