"""
This is a test module that we'll import functions
in different ways.
"""

# importing an entire module.
import return_values
import asterisk_parameter

# Importing sepcific functions functions.
from functions import pow
from functions import pet_name2

# Using as to give a function an Alias.
from functions import pow as pow_renamed

# Using as to give a Module an Alias.
import asterisk_parameter as arbitrary_parameter

# Importing all functions from a module into your one.
# from return_values import *

player = return_values.build_player(name='Pepe',
                                    last_name='Carrera',
                                    height=1.85, age=35)

for k, v in player.items():
    print(f"{k}: {v}")


pc = asterisk_parameter.build_pc(CPU='Intel',
                                 GPU='Nvidia',
                                 RAM=16,
                                 Year=2019,
                                 brand='Acer')

print('\n')
print(pet_name2('Gustavo', 'Bird'))

print('\n')
for k, v in pc.items():
    print(f"{k}: {v}")

n = pow(x=9, y=9)
print(n)

n_2 = pow_renamed(x=10, y=3)
print(n_2)
print(type(n_2))


print(f"{arbitrary_parameter.add_objects('Rupee',
                                         'Bomb',
                                         'Arc',
                                         'Light Arrow')}")


sett = {range(0, 1_000_000)}
