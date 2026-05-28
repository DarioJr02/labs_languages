"""
In this module we'll explore the asterisk argument,
and arbitrary number of parameters that can be received
by a function.
"""


def add_lang(*lang):
    """
    Passing an arbitrary number of arguments.
    """
    l_langs = []
    l_langs.append(lang)

    print(
        f"The items in the list are: {l_langs}",
        f"The list size is: {len(l_langs)}"
        f"\nThe type of the list is: {type(l_langs)}",
        f"\nThe type of the *asterisk parameter is: {type(lang)}\n"
    )


add_lang('Ruby')
add_lang('Bash', 'Python')
add_lang([range(0, 6)])
add_lang(dict({'Name': 'Mike'}))
print('\n')


def add_objects(*bag):
    """
    Using a loop instead of print with arbitrary arguments.
    """

    for item in bag:
        print(f"{item} added - OK")

    print(f"\nType of the arg is: {type(bag)}")


add_objects('Headphones', 'Keyboard', 'Watch')
add_objects('Book', 'Watch', 'Monitor', 'Rupee')
add_objects({'Name': 'Mike'})


# Mixing positional and arbitrary arguments.
def mixing_args(bag_type, *objs):
    """
    Mixing positional and arbitrary args.
    """

    bag = []

    for obj in objs:
        bag.append(obj)

    print(f"\nI have a {bag_type} with {
          len(bag)} objects and i have these objetcs to my adventure: ")

    for obj in objs:
        print(obj)


mixing_args('Common Bag', 'Green Rupees', 'Red Rupees', 'Blue Rupees')

# Using arbitrary keyword arguments


def build_profile(first, last, **user_info):
    """
    Testing arbitrary keyword arguments
    """

    user_info['First Name'] = first.title()
    user_info['Last Name'] = last.title()

    return user_info


user = build_profile('Juan', 'Castillo',
                     City='Santo Domingo',
                     Town='Los 3 brazos',)

print(f"\nUser builded: {user}, and its type is: {type(user)}")


def build_pc(brand, **pc_info):
    """
    Building a PC.
    """
    pc_info['Brand'] = brand.capitalize()

    return pc_info


pc = build_pc('Lenovo', CPU='Ryzen 7', RAM=16, GPU='Nvidia', Year=2022)
print(f"\nPC builded: {pc}")
