#include "Header.h"

class Body
{
    private:
    std::string m_name{}; 
    std::vector<double> m_position{};
    std::vector<double> m_velocity{};
    std::vector<double> m_acceleration{};
    double m_mass{};
    std::vector<double> m_force{};
    int m_id{};


    public:
    // Constructor
    Body(const std::string_view name, const std::vector<double>& position, const std::vector<double>& velocity, const std::vector<double>& acceleration, double mass) :
    m_name{name}, m_position{position}, m_velocity{velocity}, m_acceleration{acceleration}, m_mass{mass}
    {
        if (mass < 0)
        {
            throw std::invalid_argument("Negative mass not allowed.");
        }
    } 

    // Getters
    const std::string_view getName() const {std::cout << "Father body: "; return m_name;}
    const std::vector<double>& getPosition() {return m_position;}
    const std::vector<double>& getVelocity() {return m_velocity;}
    const std::vector<double>& getAcceleration() {return m_acceleration;}
    const double getMass() const {return m_mass;}
    const std::vector<double>& getForce() 
    {
        for (std::size_t cont{0}; cont < m_acceleration.size(); ++cont)
        {
            m_force.push_back(m_mass * m_acceleration[cont]);
        }
        return m_force;
    }
    const int getId() {return m_id;}

    // Setters

    // OpOv <<
    friend std::ostream& operator<<(std::ostream& out, Body& b);


};

// BodySon
class BodySon : public Body
{
    private:
    std::string m_surname{};
    static inline int s_idGenerator{0};

    public:

    // Constructor
    BodySon(const std::string_view name, const std::vector<double>& position, const std::vector<double>& velocity, const std::vector<double>& acceleration, double mass, const std::string_view surname)
    : Body{name, position, velocity, acceleration, mass}, m_surname{surname}
    {
        
    }

    // Getters
    const std::string_view getSurname() {return m_surname;}
    const std::string_view getName() {std::cout << "Son Body: "; return Body::getName();}


    // OpOv <<
    friend std::ostream& operator<<(std::ostream& out, BodySon& bs);

};