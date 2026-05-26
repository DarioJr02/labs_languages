#include "Example.h" // All dependencies included 

void test0()
{
    Example first;
    first.m_public = 39.2;
    first.m_protected = 20.1;
    first.m_private = 201.2;

    Derivate second;
    second.m_public = 399.4;
    second.m_protected = 19.93;
    second.m_private = 99.3;

    Derivate2 third;
    third.m_public = 23;
    third.m_protected = 986.3;
    third.m_private = 93.9;

    Derivate3 fourth;
    fourth.m_public = 93.4;
    fourth.m_protected = 944.2;
    fourth.m_private = 323.2;

    Derivate3Son fifth;
    fifth.m_public = 199.2;
    fifth.m_protected = 100.8;
    fifth.m_private = 3857.2;
}

void test1()
{

}

int main()
{

}