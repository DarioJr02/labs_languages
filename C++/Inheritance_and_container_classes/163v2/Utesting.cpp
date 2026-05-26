#include "class_Prototype.h" // All dependencies included

void test0()
{
    Prototype father{893.5, 12.5, 78.5};
    ProtoypeSon son{{88.5, 130.9, 835.5}, {38.5, 1311.9, 75.5}};
    PrototypeGrandSon grandSon{{88.5, 130.9, 835.5}, {38.5, 1311.9, 75.5}, {89.1, 29.6, 79.5}};

    std::cout << "Father size: " << sizeof(father) << '\n'
    << "Son size: " << sizeof(son) << '\n'
    << "GrandSon size: " << sizeof(grandSon) << '\n';
}

void test1()
{

}