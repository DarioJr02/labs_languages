#include "Header.h"

class Player
{
    public:
    std::string m_name{};
    int m_age{};
    std::string m_category{};
    static inline int s_idGenerator{0};
    int m_id{};

    // Constructor base
    Player(const std::string& name = "Insert Name", int age = 0, const std::string& category = "Base") : m_name{name}, m_age{age}, m_category{category} 
    {
        if (age < 0 || age > 50)
        {
            throw std::invalid_argument("Edad debe ser mayor que 0 y menor que 50.");
        }

        if (m_id < 0 )
        {
            throw std::runtime_error("ID must be greater than 0.");
        }

        if (m_id == 0)
        {
            m_id = ++s_idGenerator;
        }

        if (m_id < 0)
        {
            std::cout << "ID can't be 0." << '\n';
            m_id *= -1;
        }
    }

    // getters
    std::string& getName() {return m_name;}
    const int getId() const {return m_id;}
    const int getAge() const {return m_age;}
    const std::string& getCategory() {return m_category;}

    // setters
    Player& setName(const std::string& name) {m_name = name; return *this;}
    Player& setAge(int age) 
    {
        if (m_age < 0 || m_age > 50)
        {
            throw std::invalid_argument("Edad debe ser mayor que 0 y menor que 50.");
        }

        m_age = age; 
        return *this;
    }
    Player& setCategory(const std::string& category) {m_category = category; return *this;}
    
};

// - Functions


// OpOv - operator <<
std::ostream& operator<<(std::ostream& out, Player& rhs);

class NPC : public Player
{
    public:
    std::string m_profession{};

    // Constructor 
    NPC( const std::string& profession, const std::string& name, int age, const std::string& category)  : Player{name, age, category}, m_profession{profession}
    {
        std::cout << "NPC generated." << '\n';
    }
    
    // Getters
    const std::string& getProfession() {return m_profession;}

    // Setters
    NPC& setProfession(const std::string& profession) {m_profession = profession; return *this;}
    
};


// class Playable : public NPC
// {
//     public:
//     double m_hp{};
//     double m_armor{};

//     // constructor base

//     Playable(double hp, double armor)
//     {
//         if (m_hp <= 0.0)
//         {
//             std::cout << "This player is death." << '\n';
//         }
        
//         if (m_hp >= 100.0 )
//         {
//             std::cout << "Max health reached." << '\n';
//         }

//         if (m_armor <= 0)
//         {
//             throw std::invalid_argument("Armor must be more than 0.");
//         }

//         if (m_armor >= 100.0)
//         {
//             std::cout << "Max armor reached." << '\n';
//         }
        
//     }

//     // Getters
//     const double getHp() const {return m_hp;}
//     const double getArmor() const {return m_armor;}

//     // Setters
//     Playable& setHp(double hp) {m_hp = hp; return *this;}
//     Playable& setArmor(double armor) {m_armor = armor; return *this;}
// };