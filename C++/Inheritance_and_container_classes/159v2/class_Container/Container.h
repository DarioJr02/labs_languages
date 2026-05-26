#include "Header.h"

class Container
{
    private:
    int m_index{};
    double* m_data{};

    public:
    // Constructor default
    Container() = default;

    // Constructor base
    Container(int index)
    {
        assert(index >= 0);

        if (index > 0)
        {
            m_data = new double[index];
        }
    }

    // Delegate container std::initializer_list

    Container(std::initializer_list<double> list) : Container(static_cast<int>(list.size()))
    {
        int cont{0};

        for(auto i : list)
        {
            m_data[cont] = i;
            ++cont;
        }
    }
    
    // Destructor
    ~Container()
    {
        delete[] m_data;
    }

    // getter
    int getIndex() const {return m_index;}

    // .erase()
    void erase();

    // .resize()
    void resize(int index);

    // .reserve()
    void reserve(int index);

    // OpOv - .opertator[]
    double& operator[](int index);

    // .insertAtFirst()
    void insertBefore(int index, int value);

    // .pop()
    void pop(int index);

    // .insertAtFirst
    void insertAtFirst(double value) {insertBefore(0, value);}
    void insertAtLast(double value) {insertBefore(m_index, value);}
};