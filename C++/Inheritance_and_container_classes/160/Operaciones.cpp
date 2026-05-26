#include "Header.h"
#include "Container.h"

void test0()
{
    Container container{3.5, 15.5, 89.6};

    for (int cont{0}; cont < container.getLargo(); ++cont)
    {
        std::cout << container[cont] << ' ';
    }
}

void test1()
{

}

void test2()
{

}