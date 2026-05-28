"""
Summing up dictionaries concepts.
"""

# Printing Key-values by coincidences.

d_users = {
    'Kali': 'Pentesting',
    'EndeavourOS': 'General Purpose',
    'Whonix': 'Privacy',
    'QubeOS': 'Privacy',
    'DragonOS': 'TLS-SDR-RF',
    'Debian': 'General Purpose',
    'Antix': 'Minimalist',
}

favorite_distros = 'General Purpose'

for k, v in d_users.items():
    print(f"La distro es {k}, y su propósito es {v}.")

    if v == favorite_distros:
        print(
            f"{k.capitalize()} es una de las distros favoritas del usuario",
            f"y su propósito es {v}."
        )

check_kv = d_users.get(
    'Debian', 'Is not in the group of distros.'
)

if check_kv in d_users.keys():
    print("Debian está en el grupo.")
else:
    print(check_kv)


# Looping through dictionary keys in a particular order.

for k, v in sorted(d_users.items()):
    print(
        f"La distro es {k}",
        f"y, está orientada a {v}."
    )

print("\nNow we print the distros dictionary in reverse order.\n")

for k, v in sorted(d_users.items(), reverse=True):
    print(
        f"La distro es {k}",
        f"y, está orientada a {v}."
    )

# Printing values only.
print("\nPrinting values only.\n")

for v in d_users.values():
    print(f"Las distros del diccionario están orientadas a {v}.")

# Printing values ordered.
print("\nPrinting values sorted and unique.\n")

for v in set(sorted(d_users.values())):
    print(v)

# Printing unique values wrapping a collection of values inside set().
print("\nPrinting values without repeating values.\n")

for v in set(d_users.values()):
    print(v)

# Is easy to mistake sets for dictionaries,
# like in another PLs, sets do not retain elements in a sepecific order. #

s_languages = {'Rust', 'Golang', 'Ada', 'Golang', 'C++', 'Golang'}

print("\nPrinting a set.\n")

print("Looping through a set, set do not retain element in a specific order.")
for language in s_languages:
    print(language)

print("\nPrinting set sorted.\n")
for language in sorted(s_languages):
    print(language)

print("\nPrinting set reversed.\n")

for language in sorted(s_languages, reverse=True):
    print(language)


"""
Nesting
"""
print("\n[NESTING]\n")

l_distros = []
print(f"Initial length of our list {len(l_distros)}")

generic_distro = {'Family': 'Linux', 'Distro': 'General Purpose'}

for distro in range(0, 101):
    # This ways to do it are correct too.
    # l_distros.append(dict({'Family': 'Linux', 'Distro': 'General Purpose'}))
    # l_distros.append(generic_distro.copy())

    g_distro = {'Family': 'Linux', 'Distro': 'General Purpose'}
    l_distros.append(g_distro)

# Which one is most efficient way to do it within the past examples.


print(f"\nActual length of our list after filling it {len(l_distros)}.\n")

print("\nNow we modify 50 items.\n")

for d in l_distros[0:10]:
    if d['Family'] == 'Linux':
        d['Family'] = 'BSD'

print("\nNow we modify the value of the first 10 items.\n")

for d in l_distros[10:20]:
    if d['Distro'] == 'General Purpose':
        d['Distro'] = 'Hacking'

for d in l_distros[20:30]:
    if d['Family'] == 'Linux' or d['Family'] == 'BSD':
        d['Family'] = 'AluminiumOS'
        d['Distro'] = 'Multiplatform General Purpose'

for d in l_distros[30:70]:
    if d['Family'] == 'Linux' or d['Family'] == 'BSD':
        d['Family'] = 'Android'
        d['Distro'] = 'Smartphone General Purpose'

for d in l_distros[70::2]:
    if d['Distro'] == 'General Purpose':
        d['Distro'] = 'TLS-SDR'

print("\nNow we print the entire list.\n")

for d in l_distros[:]:
    print(d)


d_pc_parts = {
    'CPU': ['I7-1165G7', '4C', '8Th', '3MB Caché'],
    'GPU': ['Nvidia', 'T400', '4GB', {'CUDA Cores': 384}],
    'RAM': ['SK Hynix', {'Year': 2023}, {'Size': 32}],
}

# Lists inside dictionaries.
print("\n\n")
for k, v in d_pc_parts.items():
    print(f"Componente: ${k}$, Características: ${v}$")
    if k == 'GPU':
        if {'CUDA Cores': 384} in v:
            v[-1]['CUDA Cores'] = 385

    if k == 'RAM':
        if {'Size': 32} in v:
            v[-1]['Size'] = 64


print(d_pc_parts)
