import math

""" 
Data types: Este módulo explica los conceptos básicos de los tipos de datos en Python.

- string: "In Python, anything inside double or simple quotes is considered a string.
"""

# 1. valid strings:

message_1 = "This is a string."

message_2 = 'This is also a string.'

message_3 = "Use double quotes if your string has apostrophes like: I'm Dario, It's her birthday."

message_4 = 'Use simple quotes if your string has citations like: "It not not my deal." '

message_5 = """Use triple quotes if your string has both of them like: 
He said: "it's not my business, deal with it by yourself.""" 

# print(message_1)
# print(message_2)
# print(message_3)
# print(message_4)
# print(message_5)

# - .title() method: Transform any letter after white space to capital letter, example:
print(message_1.title())
print(message_2.title())
print(message_3.title())
print(message_4.title())
print(message_5.title())

# # - .upper() method.
# print(message_1.upper())
# print(message_2.upper())
# print(message_3.upper())
# print(message_4.upper())
# print(message_5.upper())

# # - .lower() method.
# print(message_1.lower())
# print(message_2.lower())
# print(message_3.lower())
# print(message_4.lower())
# print(message_5.lower())

# - .f-strings.
name = "fijando"
last_name = "reyes díaz"
age = 26
age2 = 26
summary = "he's old."

data = f"First name: {name.title()} | Last name: {last_name.title()} | Age: {age} | Summary: {summary.upper()}"

data_2 = f"[{"Fijando's"}], [{summary.upper()}], [{182321983298398.99}]"

print(f"@User: [{data}]")
print(data_2)
