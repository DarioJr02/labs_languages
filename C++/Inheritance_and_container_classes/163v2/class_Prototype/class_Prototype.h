#include "Header.h"

class Prototype
{
    private:
    std::vector<double> m_position{};

    public:
    // Constructor
    Prototype(std::initializer_list<double> position) : m_position{position}
    {
        m_position.reserve(3);
    } 

    // Getters
    const std::vector<double>& getPosition() {return m_position;}

};

class ProtoypeSon : public Prototype
{
    private:
    std::vector<double> m_rotation{};

    public:
    // Constructor
    ProtoypeSon(std::initializer_list<double> position, std::initializer_list<double> rotation)
    : Prototype{position}, m_rotation{rotation}
    {}

    // Getters
    const std::vector<double>& getRotation() {return m_rotation;}

};

class PrototypeGrandSon : public ProtoypeSon
{
    private:
    std::vector<double> m_scale{};

    public:
    // Constructor
    PrototypeGrandSon(std::initializer_list<double> position, std::initializer_list<double> rotation, std::initializer_list<double> scale)
    : ProtoypeSon{position, rotation}, m_scale{scale}
    {}

    // Getters
    const std::vector<double>& getScale() {return m_scale;}

};