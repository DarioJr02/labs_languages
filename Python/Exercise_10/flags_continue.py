"""
Using Flags
"""

"""
Using Continue: To return to the beginning of the loop.
"""

print("Netx while loop is to show the continue mechanism")

n = 0
while n <= 10:
    n += 1
    if n % 2 == 0:
        continue
    print(n)
