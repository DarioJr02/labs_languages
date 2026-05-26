"""
Using loops with lists and dictionaries
"""

l_u_users = ['Pedro', 'Miguel', 'Ana', 'Daniel', 'Carmen']
l_cf_users = []

while l_u_users:
    current_user = l_u_users.pop()

    print(f"Verifying user: {current_user.title()}")
    l_cf_users.append(current_user)

# Display all the confirmed users.
for cf_user in sorted(l_cf_users):
    print(f"\nUser: {cf_user.title()} confirmed.")

print(f"\nCurrent size of unconfirmed users is: {len(l_u_users)}")

# Removing all of instances from a list.

l_cf_users.append('Daniel')
l_cf_users.append('Daniel')
print("\nAll of instances of 'Daniel' will be removed of l_cf_users.")
while 'Daniel' in l_cf_users:
    l_cf_users.remove('daniel'.capitalize())

print("\nList after removing all of instances 'Daniel from l_cf_users.")

for user in l_cf_users:
    print(user.capitalize())


# Filling a dictionary with user input.

d_user_data = {}
switch = True
k = ""
v = ""
while switch:

    k = input("\nPlease, enter your name: ")

    if k == "":
        print("[Aborting Input...]")
        d_user_data.clear()
        break

    v = input("\nPlease, enter your Linux favorite Distro: ")
    if v == "":
        print("[Aborting Input...]")
        d_user_data.clear()
        break

    # Polling values to the dictionary.
    d_user_data[k] = v

    repeat = input("\nDou you want to add another user? (Y/N): ")
    if repeat == 'y'.upper():
        continue
    if repeat == 'n'.upper():
        switch = False
        print("[Finishing Program...]")
        break
    if repeat == '':
        switch = False
        print("Finishing Program...")

print("\nUsers data are:\n")
for k, v in d_user_data.items():
    print(f"User: {k}, Favorite Linux Distro: {v}")
