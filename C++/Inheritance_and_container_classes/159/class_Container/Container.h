#include "Header.h"


class Container
{
    private:
    int m_largo{}; // std::size_t opcional, entero sin signo, nunca puede ser negativo
    double* m_datos{};

    public:

    // constructor default
    Container() = default; 

    // constructor base
    Container(int largo) : m_largo{largo} // invariantes para validación del nº de elementos.
    {
        // "Compruéba" si largo (Nº de elementos del contenedor) es mayor o igual a 0, si es negativo detén el programa.
        // Otra opción sería lanzar una excepción con throw std::invalid_argument
        assert(largo >= 0); 

        // Si largo es mayor que 0, reserva un bloque contíguo de memoria para la cantidad equivalente al nº tamanho del contenedor.
        // Y que, ese bloque contiguo de memoria sea para elementos de tipo double.
        
        if (largo > 0)
        {
            m_datos = new double[largo];
        }
    }

    ~Container()
    {
        delete[] m_datos;
        // No necesitamos configurar m_datos a nullptr aquí o largo a 0 aquí.
        // Porque el objeto será destruido inmediatamente finalice la función.
    }

    void borrar() // .erase()
    {
        // De no configurar m_datos a nullptr, de no hacerlo puede causar memory leak.
        // m_largo a 0 porque configura su tamaño a 0, necesario más adelante si queremos redimensionar nuestra clase.
        delete[] m_datos;
        m_datos = nullptr;

        m_largo = 0;
    }

    // OpOv - operator[] // Se podría manejar lanzando una excepción

    double& operator[](int indice) // Para acceder a los índices y que estos sean válidos.
    {
        assert(indice >= 0 && indice < m_largo);
        return m_datos[indice];
    }

    int getLargo() const {return m_largo;}

    // modifica dinámicamente el tamaño del contenedor, pero no conserva los elementos ya existentes.
    void reasignar(int nuevoLargo) // .reserve()
    {
        borrar();

        if (nuevoLargo <= 0)
        return;

        m_largo = nuevoLargo;
        m_datos = new double[nuevoLargo];

        // Se puede refactorizar de alguna forma para evitar DRY (PISTA: private:)
    }
    
    void redimensionar(int nuevoLargo) // .resize()
    {
        // Si el nuevo contenedor ya tiene el largo correcto, todo está hecho, no tiene sentido asignar nueva memoria si ya cumple las necesidades.
        if (nuevoLargo == m_largo)
        {
            return;
        }

        if (nuevoLargo <= 0)
        {
            borrar();
            return;
        }

        double* datos{new double[nuevoLargo]};

        int elementosACopiar{(nuevoLargo > m_largo) ? m_largo : nuevoLargo};

        if (m_largo > 0)
        {
            for (int cont{0}; cont < elementosACopiar; ++cont) // Se copian los valores del nº de elementos del contenedor antiguo en el nuevo 'datos'.
            {
                datos[cont] = m_datos[cont];
            }
        }
        delete[] m_datos; // Se elimina el bloque contiguo al que apuntaba m_datos.

        m_datos = datos; // Ahora m_datos apunta al nuevo bloque contiguo, en el que se han compiado los datos.
        m_largo = nuevoLargo;

    }

    void insertarAntes(int valor, int indice)
    {
        // Verificamos que el indice está dentro de los límites del tamaho de nuestro contenedor.
        assert(indice >= 0 && indice < m_largo);

        double* datosMayorEn1{new double[m_largo + 1]}; // Se crea un nuevo bloque contiguo en memoria con 1 espacio más que el que tenga el contenedor en ese momento.

        for (int antes{0}; antes < indice; ++antes) // Se copian todos los elementos del contenedor viejo hasta antes del índice en el cont. nuevo.
        {
            datosMayorEn1[antes] = m_datos[antes];
        }

        datosMayorEn1[indice] = valor; // Se inserta el valor proporcionado a dicho índice.

        for (int despues{indice}; despues < m_largo; ++despues) // Se copian los elementos que vienen despues.
        {
            datosMayorEn1[despues + 1] = m_datos[despues];
        }

        delete[] m_datos; // En este momento m_datos se vuelve un puntero colgante.
        m_datos = datosMayorEn1; // Ahora apunta al bloque de memoria contigua de datosMayorEn1; .
        ++m_largo; 

    }

    void quitar(int indice)
    {
        assert(indice >= 0 && indice < m_largo);

        if (m_largo == 1)
        {
            borrar();
            return;
        }

        double* datosMenorEn1{new double[indice -1]}; // Crea un bloque de memoria contigua más pequeño que el indice proporcionado.

        for (int antes{0}; antes < indice; ++antes) 
        {
            datosMenorEn1[antes] = m_datos[antes]; // Copia los elementos que van antes del indice del contenedor viejo en el contenedor nuevo.
        }

        for (int despues{indice + 1}; despues < m_largo; ++despues) // Lo mismo que antes solo que con los elementos que van después del índice.
        {
            datosMenorEn1[despues] = m_datos[despues];
        }

        delete[] m_datos; // Memoria desasignada del contenedor viejo.
        m_datos = datosMenorEn1; // Apunta al nuevo contenedor
        --m_datos;
    }
    
    void insertarAlPrincipio(int valor) {insertarAntes(valor, 0);}
    void insertarAlFinal(int valor) {insertarAntes(0, m_largo);}

};