"""Creating list using range() built-in sequence type"""

l_n = [list(range(11))]
l_n2 = [list(range(10, 21))]
l_n3 = [list(range(21, 31))]

# l_n
print(f"lista: (l_n)".capitalize())
for l in l_n:
    print(l)

# l_n2
print(f"lista: l_n2.".upper())
for l in l_n2:
    print(l)

# l_n3
print(f"Lista: l_n3.".lower())
for l in l_n3:
    print(l)


# First 20 squared numbers

# First way to do it, is second way better than first? = Yes.

l_nsqrt = []
for n in range(0, 21):
    square = n ** 2
    l_nsqrt.append(square)

print(f"lista: l_nsqrt".capitalize(), l_nsqrt)


# Another way to do it
l_nsqrt_1 = []

for n in range(0, 21):
    l_nsqrt_1.append(n ** 2)

print(f"luego almacenado en la lista l_nsqrt elevado al ² es: ", l_nsqrt_1)


"""Simple statistics with a list of numbers."""

l_statistics = list(range(0, 10))
l_statistics_2 = list(range(1_000_001))

print(
    f"\nthe min value of the list is: {min(l_statistics)}".capitalize(),
    f"\nthe max value of the list is: {max(l_statistics)}".title(),
    f"\nthe sum of all elements of the list are: {sum(l_statistics)}".upper(),
    f"\nthe sum of all element in a list with a million members is: {
        sum(l_statistics_2)}".lower()
)


"""List comprehensions"""

l_c1 = [val**3 for val in range(0, 15)]
l_c2 = [val-1 for val in range(16)]

l_c3 = [
    [val**2 for val in range(9)],
    [val**3 for val in range(0, 10)],
    [(val * 2 + 30) for val in range(0, 5)]
]  # nested lists comprehensions


print(
    f"\nList comprehension example_1: {l_c1}",
    f"\nList comprehension example_2: {l_c2}",
    f"\nNested list comprehensions example_3: {l_c3[-1]}"
)


"""List slicing"""

l_people = ["Gabriela", "Pedro", "Angel", "Fonseca", "Stroustrup"]

print(f"List slicing examples.".title())

for person in l_people[0:2]:
    print(person)
print('\n')


l_people_2 = [
    "Arnold", "Maria", "Pau", "Elena", "Ada",
    "Dario", "Pamela", "Romina", "Raúl", "Marcos"
]

for person in l_people_2[2:6]:
    print(person)

print('\n')
for person in l_people_2[:5]:  # len(l_people_2 = 10, logical error.)
    print(person)
    # print(len(l_people_2))


print('\n')
for p in l_people_2[3:5]:
    print(p)


# Using negative index
print('\n')

for p in l_people_2[-2:]:  # Starts from "Raúl"
    print(p.upper())

print('\n')
# Returns all elements except the two las telements of the list.
for p in l_people_2[:-2]:
    print(p)

# Skipping elements in list slicing

print("\nSkipping elements in slicing list.")

for p in l_people_2[0:5:2]:
    print(p)

print('\n')

for p in l_people_2[-5:8:2]:
    print(p)


print('\n')
print(f"Example list:".title())

l_n = ["Fijando", "Gameso", "Ladrones", "Atracadores", "Chiperos"]

for n in l_n[:3]:
    print(n)
