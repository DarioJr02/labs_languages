#include "Header.h"

class Avatar
{
    public:
    std::string m_name{};
    static inline int m_idGenerator{0};
    int m_id{++m_idGenerator};

    // Constructor
    Avatar(const std::string& name) : m_name{name}
    {
        if (m_id < 0)
        {
            throw std::runtime_error("ID can't be negative.");
            m_id *= -1;
        }
    }

    // Getters
    const std::string& getName() const {return m_name;}
    const int getId() const {return m_id;}

    // Setters
    Avatar& setName(const std::string& name) {m_name = name; return *this;}

};

class Playable : public Avatar
{
    public:
    std::string m_category{};

    // Constructor base
    Playable(const std::string& category, const std::string& name) : Avatar(name), m_category{category}
    {}

    // Getters
    const std::string& getName() const {return m_name;}
    const std::string& getCategory() const {return m_category;}
};

class NPC : 