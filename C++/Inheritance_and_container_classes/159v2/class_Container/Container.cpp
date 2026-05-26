#include "Container.h"

// .erase()
void Container::erase()
{
    delete[] m_data;
    m_data = nullptr;
    m_index = 0;

}

// .resize()
void Container::resize(int index)
{
    if (index == m_index)
    {
        return;
    }

    if (index <= 0)
    {
        erase();
        return;
    }

    double* data{new double[index]};
    int elementsToCopy{(index > m_index) ? m_index : index};

    if (index > 0)
    {
        for(int cont{0}; cont < elementsToCopy; ++cont)
        {
            data[cont] = m_data[cont];
        }

        delete[] m_data;
        m_data = data;
        m_index = index;
    }
}

// .reserve()
void Container::reserve(int newIndex)
{
    erase();

    if (newIndex <= 0)
    {
        return;
    }

    m_index = newIndex;
    m_data = new double[newIndex];
    
}

// OpOv - .opertator[]
double& Container::operator[](int index)
{
    if (index < 0 || index >= m_index)
    {
        throw std::runtime_error("Index out of range.");
    }

    return m_data[index];
}

// insertAtFirst
void Container::insertBefore(int index, int value)
{
    if (index < 0 || index >= m_index)
    {
        throw std::runtime_error("Index out of range.");
    }

    double* data{new double[m_index + 1]};

    for(int bef{0}; bef < index; ++bef)
    {
        data[bef] = m_data[bef];
    }
    
    data[index] = value;
    
    for (int aft{index}; aft < m_index; ++aft)
    {
        data[aft + 1] = m_data[aft]; 
    }

    delete[] m_data;

    m_data = data;
    ++m_index; 
}

// .pop()
void Container::pop(int index)
{
    if (index < 0 || index >= m_index)
    {
        throw std::runtime_error("Index out of range.");
    }

    if (m_index == 1)
    {
        erase();
        return; 
    }

    double* dataMinus1{new double[m_index -1]};

    for (int bef{0}; bef < index; ++bef)
    {
        dataMinus1[bef] = m_data[bef];
    }

    for (int aft{index}; aft < m_index; ++aft)
    {
        dataMinus1[aft - 1] = m_data[aft];
    }

    delete[] m_data;
    m_data = dataMinus1;
    --m_index;

}