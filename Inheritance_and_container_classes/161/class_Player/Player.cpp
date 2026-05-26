#include "Player.h"

// classBase_Player



// OpOv - operator <<
std::ostream& operator<<(std::ostream& out, Player& rhs)
{
    out << "Name: " << rhs.getName() << ", Age: " << rhs.getAge() << ", Category: " << rhs.getCategory()
    << ", ID: " << rhs.getId();

    return out;
}

// class_NPC - functions

// class_Playable - functions 



