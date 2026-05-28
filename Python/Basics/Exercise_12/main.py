"""
Main module.
"""

from class_CPU import CPU
from class_smarthphone import SmartPhone


# val = CPU("intel", "i5", 4, 8)

# fmt_fnc dealing with SRP principle.
# print(val.fmt_info().title())

# print(f"\nMy processor has {val.cores} cores, and {val.threads} threads.")

# Converting attributes into other types.
# cores = int(val.cores)
# threads = int(val.threads)


# print(
# f"My cores var type is {type(cores)},and my threads var type is {
#   type(threads)}"
# )

cpu = CPU(brand_name='Qualcomm', model='Snap Dragon',
          cores=6, year=2022)

cpu_info = f"Cpu info: CPU: {cpu.brand_name} | Model: {cpu.model} "
cpu_info += f"| Cores: {cpu.cores} | Threads: {cpu.threads} | Year: {cpu.year}"

print(f"First CPU review:\n{cpu_info}")

cpu.brand_name = 'Intel'
cpu.model = 'I5'
cpu.cores = 8
cpu.year = 2025

cpu_info_2 = f"Cpu info: CPU: {cpu.brand_name} | Model: {cpu.model}"
cpu_info_2 += f" | Cores: {cpu.cores} | Threads: {cpu.threads}"
cpu_info_2 += f"| Year: {cpu.year}"


print(f"Second CPU review:\n{cpu_info_2}")


phone = SmartPhone('Google', 'Pixel 7', 2022, 'MediaTek', 'Mali')
phone.year = 2028
phone.model = 'Pixel 8'

print(
    "\nThese are my smartphone's specs:",
    f"\nBrand: {phone.brand} | Model: {phone.model}",
    f" | Year: {phone.year} | CPU: {phone.cpu}",
    f" | GPU: {phone.gpu}"
)
