#include "Header.h"

class Character
{
    private:
    std::string m_name{};
    std::string m_side{};
    int m_id{};

    public:

    // Constructor
    Character(const std::string_view name = "Empy name.", const std::string_view side = "Empty side.") 
    : m_name{name}, m_side{side}
    {}

    // Getters
    const std::string_view getName() const {return m_name;}
    const std::string_view getSide() const {return m_side;}
    const int getId() const {return m_id;}

    // Setters
    Character& setName(const std::string_view name) {m_name = name; return *this;}
    Character& setSide(const std::string_view side) {m_side = side; return *this;} // Can it be refactorized with ASS.R or typecast() OpOv?
    Character& setId(int id) {m_id = id; return *this;}

    // Reset()
    void reset() {*this = Character();}

    // M. functions
};

class NPC : public Character
{

    private: 
    std::string m_profession{};
    static inline int m_idGenerator{0};

    // P. functions
    void addNewId() {setId(++m_idGenerator);}

    public:

    // Constructor default
    NPC() : Character("Empty name.", "Empty side."), m_profession{"Empty profession."}
    {
        setId(++m_idGenerator);
    }

    // Constructor 
    NPC(const std::string_view name, const std::string_view side, const std::string_view profession = "Empty profession.")
    : Character(name, side), m_profession{profession}
    {
        setId(++m_idGenerator);   
    }

    // Getters
    const std::string_view getProfession() const {return m_profession;}

    // Setters
    NPC& setProfession(const std::string_view profession) {m_profession = profession; return *this;}

    // Reset
    void reset() {*this = NPC();} // It may cause conflicts or must be refactorized with template class?

};

class Playable : public Character
{
    private:
    std::string m_c_class{};
    static inline int m_idGenerator{0};
    void addNewId() {setId(++m_idGenerator);}

    public:

    // Constructor default
    Playable() : Character("Empty name.", "Empty side."), m_c_class{"Character class not selected."}
    {
        setId(++m_idGenerator);
    }

    // Constructor
    Playable(const std::string_view name, const std::string_view side, const std::string_view c_class) 
    : Character{name, side}, m_c_class{c_class}
    {
        setId(++m_idGenerator);
    }

    // Getters
    const std::string_view getCharacterClass() const {return m_c_class;}

    // Setters

    Playable& setCharacterClass(const std::string_view c_class) {m_c_class = c_class; return *this; } // Can it be refactorized with R.B.O or OpOv?
    
    // Reset
    void reset() {*this = Playable();}
};