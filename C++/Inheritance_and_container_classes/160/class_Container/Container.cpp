#include "Container.h"

// Member functions

// erase()
void Container::erase()
{
     delete[] m_datos;
        m_datos = nullptr;
        m_largo = 0;
}

// resize()
void Container::resize(int nuevoLargo)
{
    if (nuevoLargo == m_largo)
    {
        return;
    }

    if (nuevoLargo <= 0)
    {
        erase();
        return;
    }

    m_largo = nuevoLargo;
    m_datos = new double[nuevoLargo];

    double* datos{new double[nuevoLargo]};

    int elementosACopiar{(nuevoLargo > m_largo) ? m_largo : nuevoLargo};

    if (m_largo > 0)
    {
        for (int cont{0}; cont < elementosACopiar; ++cont)
        {
            datos[cont] = m_datos[cont];
        }

        delete[] m_datos;

        m_datos = datos;
        m_largo = nuevoLargo;
    }

}

// insertarAntes
void Container::insertarAntes(int indice, int valor)
    {
         assert(indice >= 0 && indice < m_largo);

        double* datosMayorEn1{new double[m_largo + 1]};

        for (int antes{0}; antes < indice; ++antes)
        {
            datosMayorEn1[antes] = m_datos[antes];
        }

        datosMayorEn1[indice] = valor;

        for (int despues{0}; despues < m_largo; ++despues)
        {
            datosMayorEn1[despues + 1] = m_datos[despues];
        }

        delete[] m_datos;
        m_datos = datosMayorEn1;
        ++m_largo;
    }

void Container::pop_back(int indice)
{
    assert(indice >= 0 && indice < m_largo);

    if (m_largo == 1)
    {
        erase();
        return;
    }

    double* datosMenorEn1{new double[indice -1]};

    for (int antes{0}; antes < indice; ++antes)
    {
        datosMenorEn1[antes] = m_datos[indice];
    }

    for (int despues{indice + 1}; despues < m_largo; ++despues)
    {
        datosMenorEn1[despues] = m_datos[despues];
    }

    delete[] m_datos;
    m_datos = datosMenorEn1;
    --m_datos;
}



// OpOv - []
double& Container::operator[](int indice)
{
    assert(indice >= 0 && indice < m_largo);
    return m_datos[indice];
}

