#include "Header.h"
#include "Avatar.h"

void test0()
{
    Avatar player0{"Papotico"};
    std::cout << player0.getId() << '\n';

    Playable player1{"Archer", "Papotico"};
    std::cout << player1.getName() << ' ' << player1.getId() << '\n';
}

void test1()
{

}