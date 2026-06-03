"""main.sh"""

from class_CPU_sub_Snapdragon import Snapdragon

cpu = Snapdragon(2017, "Qualcomm", 865, 4, 5000)

print(
    f"PU Specs are:\nCpu:{cpu.brand_name}, Model:{cpu.model}",
    f"\nCores:{cpu.cores}, Threads:{cpu.threads}, Year: {cpu.year}",
    f"\nBattery:{cpu.battery['Mah']}, ST:{cpu.storage}GB",
    f"\nStorage Type:{cpu.storage_type}",
)

cpu.storage = "HDD", 4000
print(f"{cpu.storage}", f"{cpu.storage_type}")
print(cpu.func_to_override())
