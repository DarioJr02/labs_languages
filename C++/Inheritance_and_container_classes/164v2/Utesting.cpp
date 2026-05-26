#include "Character.h" // All dependencies included

void test0()
{
    Character firstTest{"Pedrus", "Alliance"};
    std::cout << firstTest.getId() << '\n';

    Character secondTest{"Marcus", "Horde"};
    std::cout << secondTest.getId() << '\n';
}


void test1()
{
    NPC firstTest{"Santus", "Horde", "Smith"};
    std::cout << firstTest.getId() << '\n';

    NPC secondTest{"Mirowk", "Alliance", "Warlock"};
    std::cout << secondTest.getId() << '\n';

    secondTest.reset();

    std::cout << secondTest.getId() << '\n';
}