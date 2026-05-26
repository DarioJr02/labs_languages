#include "Header.h"

class Example
{
    public:
    double m_public{};

    protected:
    double m_protected{};

    private:
    double m_private{};
};

class Derivate : public Example
{
    public:
    Derivate()
    {
        m_public = 3.0;
        m_protected = 5.9;
        m_private = 300.99;
    }

};

class Derivate2 : protected Example
{
    public:
    Derivate2()
    {
        m_public = 32.2;
        m_protected = 399.9;
        m_private = 299; 
    }
};

class Derivate3 : private Example
{
    public:
    Derivate3()
    {
        m_public = 99;
        m_protected = 98.4;
        m_private = 23.3;
    }


};

class Derivate3Son : public Derivate3
{
    public:
    Derivate3Son()
    {
        m_public = 33.9;
        m_protected = 32.1;
        m_private = 299.1;
    }


};