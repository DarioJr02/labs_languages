"""
Functions
"""


def greet_user():
    """
    This function is my first function.
    """
    print("Hello on my first function.")


# greet_user()


def square(x):
    """
    Esta función multiplica el número pasado al cuadrado,
    es decir; por si mismo.
    """
    print(
        f"\n{x}² is: {x**2}"
    )


# square(9)
# square(11)


def cube(x):
    """
    Esta función multiplica el número pasado al cubo.
    """
    print(
        f"\n{x}³ is: {x**3}"
    )


def pow(x, y):
    """
    Esta función eleva el primer parámetro recibido por el segundo.
    """
    if y == 2:
        print(f"\n{x} se eleva al ².")

    if y == 3:
        print(f"\n{x} se eleva al ³.")

    return f"\n{x} elevado a {y} es: [{x**y}]."


# pow(x=8, y=4)


def pet_name(animal_type, animal_name):
    """
    Proves the next concepts:
    - Positional args.
    - Keyword args.
    - Equivalent function calls.
    """
    msg = f"My pet is a {animal_type}, and its name is {animal_name}."

    return msg


# pet_name(animal_type='Bird', animal_name='Pepe')
# pet_name(animal_name='Pepe', animal_type='Bird')


def pet_name2(animal_name, animal_type='mammal'):
    msg = f"pet is a {animal_type},"
    msg += f"and its name is {animal_name.title()}"

    return msg


"""
Equivalent function calls.
"""
# The next three function calls are equivalent.
# pet_name2('pepe')
# pet_name2(animal_name='Pepe')


def equivalent_calls(animal_type, animal_name):
    """
    Helper function.
    """
    pet_name(animal_type=animal_type, animal_name=animal_name)
    pet_name2(animal_name)


# equivalent_calls(animal_type='Parrot', animal_name='Gustavo')
