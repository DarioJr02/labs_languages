#
# List slicing, copying lists, and tuples.
##

# Copying a list using slicing
l_my_food = ['Onion', 'Carrot', 'Brocoli']
l_cate_food = l_my_food[:]  # From first index to last

print(
    f"My favorite food is {l_my_food}.\n"
    f"My friend favorite food is: {l_cate_food}."
)

l_my_food.clear()

for food in l_cate_food[0:]:
    print(food)

print("Confirmed, l_my_food is empty, copying proccess was successful.")

# Tuples

# Items of a tuple are immutable.
t_rectangle = (600, 800)

t_square = (1920, 1080, 'x2', 'x3')
# ERROR: t_rectangle[-1] = 700
print(
    f"First tuple that represents a rectangle size: {t_rectangle}"
)

print("Looping through tuples:\n")

# Looping through tuples
for n in t_square:
    print(n)

# Definying a tuple with one single element.
t_one_element = ('one',)
for t in t_one_element:
    print(t)

# Trying to make tuples slicing
t_slicing = ('go', 'c3', 'c++', 'ada', 'rust', 'python')
print("Trying to make tuples slicing.\n")
for t in t_slicing[:4]:
    print(f"[{t}]")


print(
    f"Trying to print a tuple temporarily sorted: {
        sorted(t_slicing)}".capitalize()
)


print("Making a tuple or list permanently reversed:")

reversed_tuple = reversed(t_slicing)
print("Tuple:\n")
for r in reversed_tuple:
    print(r)


# List permanently reversed
l_initial = ['a', 'b', 'c', 'e']
# l_reversed = reversed(l_initial)
print("List temporarily reversed:\n")
for item in reversed(l_initial):
    print(item)


# Another reversed tuple
print("Another reversed tuple:\n")
t_reversed = reversed(tuple(range(11)))
for t in t_reversed:
    print(t)


# Slicing tuple
print("Sliced tuple:\n")

t_to_slice = tuple(range(17))
for t in t_to_slice[::2]:
    print(t)


#
# Code Style.StopAsyncIteration
#
# We'll see the at the next examples the best code for every python developers.
#
##

f_ex = "Intentionally this line will have +79 lines of code to show the exampl."
"""This line will have +72 lines of code to show the next example for comments."""
