#include "class_Controller.h" // All dependencies included

void test0()
{
    Controller p1{"Nacom", 33};
    p1.printAll(); // Not avaible outside class_Controller

    ControllerSon p2{"Daija", 02, 1, 2, 3, 4};

    p2.printAll();
}

void test1()
{

}