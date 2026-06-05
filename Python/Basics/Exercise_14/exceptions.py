"""Exceptions"""

# Division using exceptions.

from requests import exceptions
from decimal import InvalidOperation

n_1 = None
n_2 = None
flag = True


def check_calc(n_1, n_2):
    try:
        result = int(n_1) / int(n_2)
        print(f"{result}\nPROGRAM FINISHING...")

    except ZeroDivisionError:
        print(f"You can't divide by 0! => ({int(n_1)} / {int(n_2)})")


while flag:
    prompt = "Give me the first number (Type 'quit' anytime to quit): "
    n_1 = input(prompt)

    if n_1 == "quit":
        print("[ABORTING...]")
        flag = False
        break

    n_2 = input("Now give me the second number: ")
    if n_2 == "quit":
        print("[ABORTING...]")
        flag = False
        break

    check_calc(n_1, n_2)
    break


print("Thank you for participate!")
