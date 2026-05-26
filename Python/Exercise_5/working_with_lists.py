"""Working with lists"""

# Basic loop trough in a list
l_smartphones = ['poco', 'oppo', 'htc', 'oneplus',
                 'iphone', 'rog phone', 'redmagic', 'mol']
# print(f"length of l_smartphones list is:".capitalize(), len(l_smartphones)) # First we know the length of the list

# We can iterate through a list with a loop
for smartphone in l_smartphones:
    print(f"name: ".capitalize(), smartphone.capitalize())


# Recommended naming conventions: Singular to the temporarily variable, plural to the list or container.
l_keyboards = ['corsair', 'ligitech', 'asus',
               'kiwi', 'acer', 'apple', 'xiaomi', 'amd']

print('\n')

# We can temporarily apply a function or method
for keyboard in sorted(l_keyboards):
    print(
        f"keyboard:".title(),
        f"[{keyboard.capitalize()}]",
        f"habría que darle una oportunidad.\n"
    )
print("la lista de keyboards ha terminado, pueden ser buenas opciones.".capitalize())


# Forgetting to indent
l_glasses = ['meta', 'google', 'vr']

# for glass in l_glasses:
#     print(glass)              # THis will cause an IndentationError


# -- -- -- -- Additional lines
l_reptiles = ['snake', 'cobra', 'python', 'anaconda']

for reptile in sorted(l_reptiles):
    print(f"I have a {reptile} in my house.")
# This line will be associated to the last element of the list.
print(f"Maybe i should adopt that {reptile}?.")


# Unnecesarily indentation
message = "Geo"
# print(f"\n{message.expandtabs()}") # Unexpected Indentation


"""Making numeric lists"""
# List are usefully for amount of cases, easy iteration trough hundred or millions of elements quickly due the Big O notation; examples:
l_temp_this_week = []
l_scoreboard = [93_0, 77.65, 934, 3_93_3, 933.679, 323.3]


l_population = [
    ['mahón', 14_000],
    ['es castell', 10_000],
    ['sant lluis', 6_000],
    ['sant climent', 200_0]
]

for person in l_population:
    print(
        f"Municipio: ", f"{person[0].capitalize()}\tPoblación: {person[-1]}"
    )


# Using the range() function: Generate series of numeric values.

for value in range(0, 11):
    print(f"\t[{value}]")

l_n = [
    [list(range(0, 3))],
    [list(range(0, 7))],
    [list(range(11, 21))],
    [list(range(30, 41))],
    [list(range(51))]
]


for data in l_n:
    print(data)
