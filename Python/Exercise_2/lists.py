"""Lists"""

l_shop = ['Water', 'Rice', 'Milk', 'Pineapple', 'Chicken', 'Pig Meat']

print(l_shop)
print("Probando desde nvim.")

"""Experimental"""
# We can make a l_shop copy to sorted 
l_shop_sorted = l_shop.copy()
# Another way to do it: l_shop_sorted = list(l_shop)

# 2. Builtin method: .sort() and .clear()
l_shop_sorted.sort()
l_shop.clear() # We don't need l_shop wasting memory anymore.


# Printing elements by index
print(l_shop_sorted[0].title())
print(l_shop_sorted[1].isascii())
print(l_shop_sorted[2].upper())
print(l_shop_sorted[3].lower())
print(l_shop_sorted[4].removeprefix('R'))
print(l_shop_sorted[5].removesuffix('r'))

# Accesing elements using negative index
print(
    f"accesing using negative index: ".title(), 
    f"[Penultimate: {l_shop_sorted[-2].upper()} \tLast: {l_shop_sorted[-1].upper()}]"
    ) 
# useful when we want to acces the last element and whe don't know many elements are in the list.


# Creating an object based on a list element.
msg = f"The first item mom told me to buy at the shop is: {l_shop_sorted[1]}"
print(msg)

l_vehicles = ["yamaha", "honda", "audi", "toyota", "nissan", "peugeot"]
favorite_vehicle = f"I would like to buy a {l_vehicles[-1].title()} some day."
print(favorite_vehicle)


# Modifying elements of the list
l_vehicles[-1] = "mazda"
print(f"Sorry i mean, my favorite vehicle is: {l_vehicles[-1].title()}.")

# Appending and inserting elements to the list
print(f"List first check: {l_vehicles}")

# By default, inserts the new element at the end of the list, it only takes one param.
l_vehicles.append("aston martin") 

# We the .insert() method, we can specify the index we can insert the new element.
l_vehicles.insert(3, "ford") 

print(f"List second check: {l_vehicles}")


"""Removing elements of the list"""
del l_vehicles[-1] # Is "aston martin" element deleted? = True.
l_vehicles.remove("audi") # Removing by value.
print(l_vehicles)


# Removing more elements
l_n = [9, 8, 8, 8, 7, 5, 11, 4, 6, 2, 3, 1]
print(f"list of numbers: ".title(), l_n)

# Saving values before they'll removed
l_n_d1 = l_n.pop() # == l_n[-1]
l_n_d2 = l_n[1]
print(f"{l_n_d1}, {l_n_d2}")

del l_n[-4] # Element: [6] deleted by index.
l_n.remove(8) # First element that matches with LTR [8] deleted.

print(
f"List status: {l_n}")
f"Elements deleted: {l_n_d1}, {l_n_d2}"

# del Statement, .pop(index = -1 by df)
l_names = ["carlos", "carla", "thomas", "ada"]
print(f"lista inicial: {l_names}".title())

name_to_delete_1 = "thomas"
l_names.remove(name_to_delete_1)
name_deleted_2 = l_names.pop(1)

print(
    f"Elementos borrados: {name_to_delete_1}, {name_deleted_2}", 
    f"\nComprobamos de nuevo la lista: {l_names}\n".title()
    )




"""Organizing lists"""
l_languages = ["c", "c3", "c++", "python", "rust", "ada", "lua"]
print(
    f"languages list initial status: {l_languages}".title()
    )

# sorted() function: Temporarily orders the list.

print(
    f"languages list sorted temporarily using --sorted()-- function: ".capitalize(), 
    f"{sorted(l_languages)}".title()
    )

# .sort() method: Orders permanently the list.
l_languages.sort()

print(
    f"now languages list is sorted permanently using --.sort() method-- : ".capitalize(), 
    f"{l_languages}".title()
    )


# .sort(reverse=True): Reverse the order of the list.
l_languages.sort(reverse=True)
print(
    f"now the order of the list is reversed using --.sort(reverse=True) param--: ".capitalize(),
    f"{l_languages}".title()                # is .sort() method unavaiable after reverse=True order a list?
    )



"""Reversing the elements from a list."""

l_languages.sort()
l_languages.reverse()

print(
    f"\nLanguages list reversed: "
    f"{l_languages}\n".title())



"""Finding the length of a list"""

print(
    f"{len(l_vehicles)}\t"
    f"{len(l_shop_sorted)}\t",
    f"{len(l_names)}\t",
    f"{len(l_languages)}\t",
    )




"""Ordering a list that first letter are not capitalized [SOLUTION NOT FOUND BY NOW]"""

l_laptops = [
    'Asus', 'acer', 'lenovo', 'thinkpad', 'Amiga', 'zephyrus',
    'BenQ', 'babble', 'Zehpyrus', 'rog', 'Amstrad', 'Lenovo', 'amd', 'apple'
    ]

print(f"\nLaptop brands initial status: ", l_laptops)

# Capitalize list and then we order it.
print(
    f"\nLaptop brands sort attempt: ",
    f"{sorted(l_laptops)}")

# List sorted --> Elements that have capitalized first letter are ordered first.
l_laptops.sort()


# Solution not found by now.
print(
    f"\nLaptop brands sort, second attempt, now capitalizying first letters of its elements. ",
    f"{sorted(l_laptops)}".title()
)





"""Avoiding index with lists"""
l_final = []
print(f"The length of l_final list: ", len(l_final)) 
print(len(l_final[-1])) # This will cause a Traceback because this list is empty, what do you think about it?, isn't python funny huh?



