#include "Header.h"

class Container
{
    private:
    int m_largo{};
    double* m_datos{};

    public:

    // Constructor default
    Container() = default;

    // Contstructor base
    Container(int largo) : m_largo{largo}
    {
        assert(largo >= 0);

        if (largo > 0)
        {
            m_datos = new double[largo];
        }
    }

    Container(std::initializer_list<double> list) : Container(static_cast<int>(list.size()))
    {
        int contenedor{};

        for(auto i : list)
        {
            m_datos[contenedor] = i;
            ++contenedor;
        }
    }

    // Destructor
    ~Container()
    {
        delete[] m_datos;
    }

    // Member functions

    // Erase
    void erase();
    void resize(int nuevoLargo);

    // InsertarAntes
    void insertarAntes(int indice, int valor);


    // pop_back
    void pop_back(int indice);

    // insertarAlPrincipio y insertarAlFinal
    void insertarAlPrincipio(int indice, int valor) {insertarAntes(valor, 0);}
    void insertarAlFinal(int valor) {insertarAntes(0, m_largo);}

    // OpOv - []
    double& operator[](int indice);

    // getters

    int getLargo() const {return m_largo;}

    

};