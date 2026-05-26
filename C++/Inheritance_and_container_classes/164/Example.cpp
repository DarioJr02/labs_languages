#include <iostream>

class Mother
{
    public:

	// Constructor
	Mother(int m)
    {
	std::cout << "Mother: " << m << '\n';
    }
};

class Daughter : public Mother
{
    public:

	// Constructor
	Daughter(int m, double d) : Mother{m}
    {
	std::cout << "Daughter: " << d << '\n';
    }

};

class GrandDaughter : public Daughter
{
    public:

	// Constructor
	GrandDaughter(int m, double d, char gd) : Daughter{m, d}
    {
		std::cout << "GrandDaughter: " << gd << '\n';
    }
};

int main()
{
    GrandDaughter maria{69, 99.9, 'D'}; // Usar el depurador
}


