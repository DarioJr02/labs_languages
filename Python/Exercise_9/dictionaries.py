"""
Dictionaries.
"""

# Alien dictionary.
spaceship = 'Spaceship'
alien = 'Alien'
d_alien = {'type:': alien, 'color:': 'blue'}
d_sp = {'type:': spaceship, 'color:': 'green'}

# Accesing values in a dictionary.
print("[Print a values in a dictionary]\n",
      f"{d_alien['type:']}, {d_alien['color:']}\n",
      f"{d_sp['type:']}, {d_sp['color:']}\n"
      )

print(f"My favorite type is: {d_sp['type:']
                              }, and its color is: {d_sp['color:']}")
# Dictionaries inside lists
l_users = [
    {'ID:': 1, 'IP:': '192.1.2.10', 'Username:': 'Kali'},
    {'ID:': 2, 'IP:': '193.93.2.23', 'Useranme:': 'Parrot'}
]

print("Las primeras IPs recolectadas son:")
for indx in l_users:
    print(indx['IP:'])


# Adding new key-value pairs
l_users[0]['Color:'] = 'Blue'
l_users[-1]['Color:'] = 'Green'

print("\nLos nuevos valores son los colores:")
for indx in l_users:
    print(indx['Color:'])

l_users.append({'ID:': 4, 'IP:': '194.94.3.24', 'Username:': 'BlackArch'})
print(l_users)

# Starting with an empty dictionary.

dict_empty = {}

# dict_empty = ['ID:': 2, 'IP:': '192.23.45.14', 'Username:': 'Debian']
# # [¿Solo se permite un value-key, o la opción es hacer nested dictionaries?]
dict_empty['ID:'] = 2
dict_empty['IP:'] = '198.32.8.923'
dict_empty['Username:'] = 'Debian'

if not dict_empty:
    print("Dictionary is empty.")
else:
    print(f"Dictionary contains:\n{dict_empty}")

# Modifiying values in a dictionary.
dict_empty['ID'] = 10
dict_empty['IP:'] = '99.99.99.99'
dict_empty['Usermane:'] = 'Slackware'

print(f"The new representation of the dictionary is: {dict_empty}")

# Removing key-value pairs.
del dict_empty['IP:']  # IP Key-value of dict_empty is deleted permanently.

# A dictionary of similar objects.
dict_favorite_languages = {
    'Paula': 'Rust',
    'Pedro': 'C',
    'Bryan': 'Java',
    'Dario': 'C++',  # Good practice put a comma to the last element.
}

print(f"The favorite language of Dario is {dict_favorite_languages['Dario']}.")

# Checking if a value exist in a dictionary.
if 'Paula' in dict_favorite_languages:
    print(f"Este miembro está en el equipo y usa {
          dict_favorite_languages['Paula']}.")
else:
    print("Este miembro no está en el equipo y no sabemos que lenguaje usa.")


"""
Using get() to access values
"""

dict_browsers = {
    'Dario': 'Tor',
    'Ilu': 'Brave',
    'Tsuna': 'Chrome',
    'Jesus': 'Firefox',
    'Gustavo': 'Thorium',
}

# Returns Ilu's Value.
unknown_value = dict_browsers.get('Ilu:', "Ilu are not in the group.")

# if 'Carlos:' in dict_browsers:
# print(f"Carlos is in this group and his favorite browser is {
#   dict_browsers['Carlos:']}"
# )
# else:
# print(dict_browsers.get(
#   'Carlos:', "Carlos are not in this group of users.")
# )

print(unknown_value)

# using .get() method.
uknown_value2 = dict_browsers.get('Edward', 'Opera')
print(uknown_value2)

# Looping through Key-value pairs.
for k, v in dict_browsers.items():
    print(
        f"\nUsername: {k}",
        f"Favorite browser: {v}"
    )

#
# Looping through all the Keys in a dictionary.
#
# Two next loops will return the same result.
# #

for k in dict_browsers.keys():
    print(f"Key: {k.upper()}")

# Same output as the last result.
for k in dict_browsers:
    print(f"Key (same output): {k}")

# Adding a new Key-Value to the dictionary.

dict_browsers['Edward'] = uknown_value2

# Greeting specific friends:
l_friends = ['Edward', 'Gustavo']

for k in dict_browsers:
    print(f"Hi {k}")

    if k in l_friends:
        browser = dict_browsers[k]
        print(f"Hi {k}, i can see your favorite browser is {browser}.")
