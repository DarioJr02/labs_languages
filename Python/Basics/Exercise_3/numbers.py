"""Numeric types"""

# Integers
print(f"\n[integers]".title())
i_1 = 10
i_2 = 20

print(f"        sum:".lstrip(" |@#~½¬{##[]}"), (i_1 + i_2))
print(f"subs:           ".rstrip(" #@|"), (i_1 - i_2))
print(f"|@#~ mult: ~#|@#".strip(" |@#~"), (i_1 * i_2))
print(f"div:;99999".removesuffix(";99999"), (i_1 / i_2))

# Floating points
print(f"\n[integers]".replace("integers", "floating point").title()) # Replace redundant, direct value preferred.
f_1 = 0.1
f_2 = 0.2
f_3 = 9.9

print(f"sum:" f"{(float(f_1 + f_2))}") # Rounding error
print(f"op:".upper(), (float((f_3 ** i_2) / f_1)), f"\n to str:".strip().title(), str((float((f_3 ** i_2) / f_1))))

# Representing exponents
print(f"\n[floating point]".replace("floating point", "Exponents").title())

print(f"exp_1:".upper(), (i_1 ** 2))
print(f"exp_4:".lower(), (i_2 ** 2))
print(f"exp_3:".title(), (i_2 ** i_1))
print(f"exp_5:".replace('_', '->').upper(), i_2 ** (2 ** 2))

# Underscores in numbres
print(f"UNDERSCORING IN NUMBERS".lower())

x = 90
x_2 = 9_0
y = 5_30_0_200.9
z = 7_22_0
q = (x + y) ** 2 

print(f"x calc:".title(), (x + float(1_00_00) / (2 ** 2_0)))
print(f"y calc".upper(), y)
print(f"z calc".lower(), (q + 1))

