#
# If statements.
#
# At this code draft, we'll learn about the if statements,
# and how to apply them with the previous concepts that we
# learned (lists, comprehension lists, tuples, etc).
#
###

for it in range(31):
    if (it % 2 == 0):
        print(f"{it} es divisible por 2.")
    else:
        print(f"{it} no es divisible por 2.")

# list[str]
l_pc_brands = ['lenovo', 'asus', 'alienware', 'acer', 'msi']
val_to_find = 'Alienware'

for pc in l_pc_brands:
    if pc.title() == val_to_find:
        print(f"{val_to_find} [ENCONTRADO].")


# If statement through a tuple.
#

# Trying to find an apple, and a conditional test.val2_to_find
print("Trying to find an apple.")
t_food = ('Burger', 'Apple', 'Pineapple', 'Carrot', 'Avocado')
val2_to_find = 'apple'

for food in t_food:

    if food == val2_to_find.title():
        print(f"{val2_to_find}.title() [ENCONTRADO]")


# Conditional Tests

food = 'Carrot'
print(f"This conditional test will result in {food == 'carrot'}")
print(f"Now this conditional test will result in {food.title() == 'carrot'}")

# != operator

requested_topping = "pepperoni pizza"
if requested_topping != "Pepperoni Pizza".lower():
    print("Hold on the anchioves!")
else:
    print(f"Get out the {requested_topping}!")


# Age checking

age_0 = 21
age_1 = 23
age_2 = 28

if age_0 <= age_1 and age_1 >= age_2:
    print(True)
else:
    print(False)

# Another one comparison

if age_2 > age_1 or age_1 > age_0:
    print(f"You got it, the result is: {True}")
else:
    print(f"Something went to shit, the result is: {False}")

# Using parenthesis conditional testings to get a result

if (age_0 > 14) and (age_2 > age_1):
    print(f"Succesfully result: {True}")
else:
    print(f"Something went to shit, the result is: {False}")


# Search a value through a sequence.

l_smartwatches = [
    'galaxy', 'pixel', 'apple',
    'redmi watch', 'xioami', 'garmin'
]

# What we can do here?
if ('apple' in l_smartwatches) and (l_smartwatches.index('apple')) and (l_smartwatches[1] == 'pixel'):
    print(f"The result of this evaluation is: {True}")
else:
    print(f"The result of this evaluation is: {False}")

# Checking whether a value is not in the list.
print(f"The result of this conditional is: {'garmin' in l_smartwatches}")

user = 'superPapi'
l_banned_users = ['gameso', 'fijando', 'molinero', 'el dotol']

if user not in l_banned_users:
    print(f"Puedes seguir en lo tuyo {user.capitalize()}")

# Different rates for different age groups in a museum.False

age = 13
if age < 10:
    print("You can't go to the party.")
elif age >= 13:
    print("You can go to the party.")
else:
    print("Stay at home better.")

# Udating a variable (ad-hoc polymorphism)

age = 13
price = 5

if age < 13:
    price = 10
elif age >= 13:
    price = 15
else:
    price = 50

print(f"You entrance will cost ${price}.")

# Omitting the else block, Python doesn't require a else block strictly.

coins_bag = 30
level = 14

if level < 5 and level < 2:
    coins_bag = 10
elif level <= 5:
    coins_bag = 50
elif level > 5 and level <= 10:
    coins_bag = 100
elif level >= 10 and level < 19:
    coins_bag = 300

print(f"Eres nivel {level}, y puedes llevar {coins_bag} monedas.")

# Testing multiple if conditoins
print("\nOrdering Pizza:")
l_ingredients = ['Mushrooms', 'Pepperoni',
                 'Pineapple', 'Extra Cheese', 'Onions'
                 ]

client_order = ['Pepperoni', 'Onions', 'Extra Cheese']

for client_ingredient in client_order:
    if client_ingredient in l_ingredients:  # Using multiple lists.
        print(f"Adding {client_ingredient} to your Pizza.")
    else:
        print(f"We don't have {client_ingredient} right now.")

print("Making your Pizza!")

# Another way to order Pizza.

print("\nAnother way to order Pizza.")

if 'Pepperoni' in client_order:
    print("Adding Mushrooms to your Pizza.")
if 'onions'.capitalize() in client_order:
    print('Adding Pineapple to your Pizza.')

print("Making your second Pizza!.")

# Checking that a list is not empty.

print("\nChecking that a Pizza list is empty or not.")
requested_toppings = []
if requested_toppings:
    for requested_topping in requested_toppings:
        print(f"Adding {requested_topping} to your Pizza.")
else:
    print("Are you sure that you want a plain Pizza?.")


"""Checking empty lists PEP 8."""
print("\nChecking empty lists and tuples according PEP 8.")

l_cars = []
l_bikes = []
t_languages = tuple()
t_tools = ('Clang-Tidy', 'Pyflakes', 'PyCodeStyle',
           'G++', 'Clang', 'xmake', 'Gradle'
           )
print("\nCars:")
if not l_cars:
    print("There are not available cars.")
else:
    for car in l_cars:
        print(f"[{car}] is available.")


print("\nBikes:")
if l_bikes:
    for bike in l_bikes:
        print(f"[{bike}] is available.")
else:
    print("Bikes are not available.")


print("\nLanguages:")
if not t_languages:
    print("There are not available languages.")
# else:
# for language in t_languages: # Logic Error: "Never".
    # print(f"{language} available.")

print("\nTools:")
if not t_tools:
    print("There are not tools available.")
else:
    for tool in t_tools:
        print(f"{tool} is available.")
