"""
Return values.
"""


def get_formatted_user_data(name, last_name, age, id=0):
    """
    This functions returns a formatted data of an user.
    """
    fmt_msg = f"Name: [{name.title()}] | Last name: [{last_name.title()}] | "
    fmt_msg += f"Age: [{age}], | ID: [{id}]"
    return fmt_msg


# print(f"First user info:\n{
#      get_formatted_user_data('james', 'gallardo devers', 28, 1)}")


# Maybe redundant, but this is to trying SRP.


def fmt_pow(x, y=2):
    """
    Pow fmt function.
    """
    msg = f"\n{x} raised to the power of {y} is: {x**y}"
    return msg.title()


def pow(x, y=2):
    """
    This functions returns a number raised to the power of another.
    """
    print(fmt_pow(x, y))

    return (x**y)


# print(pow(9, 3))
# print(pow(12, 4))
# print('\n')

"""
Returning a dictionary
"""


def build_geo(geo_type, id=0):
    """
    This function will return a dictionary.
    """

    geo = {'Geo Type': geo_type, 'ID': id}

    return geo


# geo = build_geo(geo_type='Cube', id=33)

# for k, v in geo.items():
#    print(f"{k}: {v}")


def build_player(name, last_name, height, age=18):
    """
    This function will return the data of a player.
    """

    if age < 18:
        print(f"{name} es menor de {18} años.")
        age = 18

    # player = {
    #    'Name': name, 'Last Name': last_name,
    #    'Height': height, 'Age': age}

    return {'Name': name,
            'Last Name': last_name,
            'Height': height,
            'Age': age, }


# player = build_player(name='Marcos',
# last_name='Castillo',
# height=1.73, age=16)

# print(f"\nThe player data is: {player}.")


def fmt_msg(obj, flag=None):
    """
    Format message function to iteractive functions.
    """
    if flag:
        return f"[Arg passed is {type(obj)} required]"
    else:
        return "[Arg passed NOT required type.]"


def ir_build_player(name='', last_name='', height=0.0, age=0):
    """
    Building a player in interactive mode (ir).
    """

    flag = True
    data = {}

    print("\nType 'quit' anytime to quit.")
    while flag:
        name = input("First name: ")

        if name == 'quit':
            break

        if str(name):
            conv = str(name)
            print(fmt_msg(flag=True, obj=conv))
            data['First name'] = name.title()

        else:
            print(fmt_msg(flag=False, obj=name))
            flag = False
            return data

        last_name = input("Last name: ")

        if last_name == 'quit':
            break

        if str(last_name):
            conv = str(last_name)
            print(fmt_msg(flag=True, obj=conv))
            data['Last Name'] = last_name.title()
        else:
            print(fmt_msg(flag=False, obj=last_name))
            return data

        height = input("Height: ")

        if height == 'quit':
            break

        if float(height):
            conv = float(height)
            print(fmt_msg(flag=True, obj=conv))
            data['Height'] = height
        else:
            print(fmt_msg(flag=False, obj=height))
            return data

        age = input("Age: ")

        if age == 'quit':
            break

        if int(age):
            conv = int(age)
            print(fmt_msg(flag=True, obj=conv))
            data['Age'] = age
        else:
            print(fmt_msg(flag=False, obj=age))
            return data

    return data


# player_1 = ir_build_player()
# for k, v in player_1.items():
#   print(f"{k}: {v}")

"""
Passing a List
"""

l_languages = ['C++', 'Python', 'Rust', 'Go', 'Ruby', 'Bash']


def fmt_list(l_to_format):
    """To format the list passed as argument."""
    for item in sorted(l_to_format):
        print(item)


# fmt_list(l_languages)

# Hacer una functión que filtre los elementos lenguajes de,
# una lista en compilados o interpretados.


def l_languages_filter(l_list):
    """
    This function filter languages by:
    - Compiled.
    - Interpreted.
    """
    l_interpreted = []
    l_compiled = []
    l_to_find = ['C++', 'Go', 'Rust']

    for lang in l_to_find:
        if lang in l_list:
            l_compiled.append(lang.capitalize())
            # l_to_find.remove(lang)

        l_to_find = ['Python', 'Ruby', 'Bash']

    for lang in l_to_find:
        if lang in l_list:
            l_interpreted.append(lang.capitalize())
            # l_to_find.remove(lang)

    l_list.clear()
    if len(l_list) == 0:
        print("\nOK, l_list empty.")

    print(f"Los lenguajes compilados son: {l_compiled}")
    print(f"Los lenguajes interpretados son: {l_interpreted}")


# l_languages_filter(l_languages)
