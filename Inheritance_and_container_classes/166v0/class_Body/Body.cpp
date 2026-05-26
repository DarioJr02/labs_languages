#include "Body.h"

// OpOv <<
    std::ostream& operator<<(std::ostream& out, Body& b)
    {
        out << "Body: " << '\n';

        // Position
        out << "Position: ";
        for (std::size_t cont{0}; cont < b.getPosition().size(); ++cont)
        {
            out << '(' << b.m_position[cont] << ')'; 
        }
        out << '\n';

        // Velocity
        out << "Velocity: ";
        for (std::size_t cont{0}; cont < b.getVelocity().size(); ++cont)
        {
            out << '(' << b.m_velocity[cont] << ')'; 
        }
        out << '\n';

        // Acceleration
        out << "Acceleration: ";
        for (std::size_t cont{0}; cont < b.getAcceleration().size(); ++cont)
        {
            out << '(' << b.m_acceleration[cont] << ')'; 
        }
        out << '\n';

        out << "Mass: " << b.m_mass << '\n';

        // Force
        out << "Force: ";
        for (auto i : b.getForce())
        {
            out << '(' << i << ')';
        }
        out << '\n';

        return out;
    }


// BodySon - Functions

// OpOv <<
std::ostream& operator<<(std::ostream& out, BodySon& bs)
{
    out << "BodySon: ";

    out << static_cast<Body&>(bs);
    out << "Surname: " << bs.m_surname;
    
    return out;
}