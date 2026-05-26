"""
User inputs.
"""

# 1.
# message = input("Tell me something, and i will repeat it back to you: ")
# print(message)
#

# 2. Writing clear prompts
# name = input("Please, enter your name: ")
# print(f"\nHello, {name.capitalize()}.")

# age = input("Please, give me your age: ")
# print(f"\n{name}, your age is {age}.")

# 3. Writing prompts longer than one line.
# prompt = f"Depending on the info you give me, i will repeat it back to you {
#    name}."

# prompt += "\nSo, where are you from?: "
# country = input(prompt)

# print(
#   "\nInteresting, i never met a person who came from",
#   f"{country}."
# )

# last_name = input(f"\nGive me another info of you {
#                 name}, what's your last name?: ")

# print(
#  f"\nInteresting too, {
#       last_name.capitalize()} is a last name of hispanic origin."
# )

# favorite_language = input(
#   f"\nOk {name}, now tell me what's your favorite programming language: "
# )

# print(
# f"\n{favorite_language} is a powerful language, continue learning it Mr.{
#   last_name}!",
# f"At your age ({age}), you have time to learn a lot of PLs."
# )


# 4. Using input() to get numerical values.
# print(
#    f"\n{name}, Python interprets your inputs like your age, as {type(age)}."
# )


# 5. Using int() to accept numerical inputs.
# if int(age) >= 18
#  print(
#     f"\n{name}, you can do what u want, you're only {
#        age}, enjoy the life man!."
# )


"""
While loops.
"""

n = 0

while n <= 10:
    print(n)
    n += 1


# 6. Letting the user choice when to quit.
prompt = "\nTell me somethin, and i'll repeat it back to you."
prompt += "\nLet's begin, tell me something: "

message = ""

while message != 'quit':
    message = input(prompt)
    print(
        f"\nYou said: [{message}]"
    )

    if message == 'quit':
        print(
            "[PROGRAM CLOSING...]",
            "\n[PROGRAM ENDED]"
        )


# 7. Prompt 2

prompt_2 = "\nTell me something more, about goal expectatives."
prompt_2 += "\nCome on!, don't be shy: "

message_2 = ""

while message_2 != 'quit':
    message_2 = input(prompt_2)
    print(
        f"\n{message}"
    )
