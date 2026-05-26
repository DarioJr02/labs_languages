"""Multiple assignments and constants"""

# M. Assignments
x, y, z = 0.0, 0.0, 0.0
q = x, y, z

print(f"[x: {x} | y: {y} | z: {z}]")
print(f"q: [{q}]".title())

fname, sname, lname = """dario         """, """      jr""", """             castillo                    """
data = f"{fname.rstrip()}, {sname.lstrip()}, {lname.strip()}"

print(f"data: [{data}]".title())

# Constants
X, Y, Z = 0.0_2_3, 1.0_0_0, 2.9_9_9
DATA = data

# How is this possible if these objects are constant values?.
DATA = "Change"
X = (20 ** 2)
Y = (3_0 ** 2)
Z = X / Z

print(f"[x: {X} | y: {Y} | z: {Z}]")
print(f"data: [{DATA}]".upper())


import this 

for val in range(81):
    print(f"{val}")
