#! /bin/python3

class User:
    def __init__(self, name=" ", age=None):
        """Defining __init__ method."""
        self._name = name
        self._age = age

    # Getters

    @property
    def name(self):
        """get name"""
        return self._name

    @property
    def age(self):
        """get age"""
        return self._age

    # Setters
    @name.setter
    def name(self, new_name):
        """set name"""
        self._name = new_name

    @age.setter
    def age(self, new_age):
        """set age"""
        self._age = new_age

    def check_name(self, input, flag=True):
        """name checker"""

        if input.isnumeric():
            flag = False
            return flag

        if input != 'exit':
            return True

        if input == 'exit':
            flag = False
            return flag

        if input == "":
            flag = False
            return flag

    def check_age(self, input, flag=True):
        """age checker"""

        if input == 'exit':
            flag = False
            return flag

        if input == "":
            flag = False
            self.age = None
            return flag

        if input.isnumeric():
            return flag
        else:
            return False


user_data = User()

flag = True

prompt_user_name = "Type your name: "
prompt_user_age = "Type your age: "

abort_msg = "Aborting..."

while flag:

    print("\nWelcome to the script.\nType 'exit' anytime to quit.")

    # Input user name
    user_data.name = input(prompt_user_name)

    if user_data.check_name(user_data.name):
        print(
            f"Your name is {user_data.name.capitalize()}"
        )
    else:
        flag = False
        print(f"{abort_msg.upper()}")
        break

    # Input user age.
    user_data.age = input(prompt_user_age)

    if user_data.check_age(user_data.age):
        print(f"Your age is {user_data.age}")
    else:
        flag = False
        print(f"{abort_msg.upper()}")
        break

    flag = False


print(f"Thank your for using this script {user_data.name.upper()}!")
