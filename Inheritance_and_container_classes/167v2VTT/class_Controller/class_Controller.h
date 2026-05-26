#include "Header.h"

class Controller
{
    private:
    std::string m_model{};
    int m_serialNumber{};

    protected:
    void printAll()
    {
        std::cout << m_model << ' ' << m_serialNumber << '\n';
    }

    public:
    Controller(const std::string_view model, int serialNumber) : m_model{model}, m_serialNumber{serialNumber}
    {
        assert(m_serialNumber >= 0);
    }
    
    // Getters
    const std::string_view getModel() const {return m_model;}
    const int getSerialNumber() const {return m_serialNumber;}
};

class ControllerSon : public Controller
{
    private: 
    double m_buttonA{};
    double m_buttonB{};
    double m_buttonX{};
    double m_buttonY{};

    public:
    ControllerSon(const std::string_view model, int serialNumber, double bA, double bB, double bX, double bY) 
    : Controller{model, serialNumber}, m_buttonA{bA}, m_buttonB{bB}, m_buttonX{bX}, m_buttonY{bY}
    {} 

    // Getters
    const double getButtonA() const {return m_buttonA;}
    const double getButtonB() const {return m_buttonB;}
    const double getButtonX() const {return m_buttonX;}
    const double getButtonY() const {return m_buttonY;}

    // Setters
    ControllerSon& setPulseA(double newPulseA) {m_buttonA = newPulseA; return *this;}
    ControllerSon& setPulseB(double newPulseB) {m_buttonB = newPulseB; return *this;}
    ControllerSon& setPulseX(double newPulseX) {m_buttonX = newPulseX; return *this;}
    ControllerSon& setPulseY(double newPulseY) {m_buttonY = newPulseY; return *this;}

    // Desencapsulacion 
    using Controller::printAll; // Now avaible in ControllerSon, now is public, but it can be changed in another derivated class from this.

};