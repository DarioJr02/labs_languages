"""
While loops
"""

# 1. Running a script example.

tab = '\t'

title = "[Welcome to the install interface]"
print(f"{tab}{tab}{tab}{tab}{tab}{tab}{tab}{tab}{title}")

prompt = "\nSelect the language you want to install."
prompt += "\nType [quit] to abort the install: "

d_languages = {
    1: 'Ada', 2: 'Rust', 3: 'Golang', 4: 'Python', 5: 'C',
    6: 'C++', 7: 'Ruby', 8: 'C3', 9: 'Java', 10: 'Kotlin'
}

message = ""
selected_option = ""

for k, v in d_languages.items():
    print(f"{k}: {v}")

while message != 'quit':
    message = input(prompt)

    if message == 'quit':
        print("Aborting installation...".upper())
        break
    if message == "":
        continue

    for k, v in d_languages.items():
        if k == int(message):
            selected_option = v
            print(f"Searching dependencies for {selected_option}...")
            break
        else:
            continue

    break

# Installing a build tool example.

d_build_tools = {
    1: 'Alire', 2: 'Cargo', 3: 'GCC', 4: 'G++', 5: 'Clang',
    6: 'Clang3', 7: 'Bradle'
}
print('\n')

message_2 = ""
selected_option2 = ""

prompt_2 = "\nSelect a build tool: ".upper()
for k, v in d_build_tools.items():
    print(f"{k}: {v}")

while message_2 != 'quit':
    message_2 = input(prompt_2 + '\n')

    if message_2 == 'quit':
        print("Aborting tool installation".upper())
        break
    if message_2 == "":
        continue

    for k, v in d_build_tools.items():
        if k == int(message_2):
            selected_option2 = v
            print(
                f"Installing dependencies for {selected_option2} build tool..."
            )
            break  # Ending the for loop for now.

        else:
            continue
    break  # Ending the while loop for now.
