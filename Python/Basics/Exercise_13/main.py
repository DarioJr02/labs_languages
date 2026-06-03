"""main.py"""

from class_cpu_sub_snapdragon import Snapdragon

# Python Standard Library.
from random import randint

from random import choice

cpu = Snapdragon(2017, "Qualcomm", 865, 4, 5000)

print(
    f"PU Specs are:\nCpu:{cpu.brand_name}, Model:{cpu.model}",
    f"\nCores:{cpu.cores}, Threads:{cpu.threads}, Year: {cpu.year}",
    f"\nBattery:{cpu.battery['Mah']}, ST:{cpu.storage}GB",
    f"\nStorage Type:{cpu.storage_type}",
)

cpu.storage = "HDD", 4000
print(f"\n{cpu.storage}", f"{cpu.storage_type}")
print(cpu.func_to_override())

cpu.storage = "NVME", 2000

print(f"\n{cpu.storage}", f"{cpu.storage_type}")
print(cpu.func_to_override())

# Python standard library => randint()
print(randint(9, 15))

l_users = ["Pedro", "Ismael", "Katherine", "Mike"]
print(choice(l_users))
