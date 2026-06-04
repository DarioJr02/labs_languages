"""Chapter Files and Exceptions"""

from pathlib import Path

# Reading from a file
path = Path("../pcc_3e-main/chapter_10/reading_from_a_file/pi_digits.txt")
content = path.read_text()

print(content)

path_2 = Path("../Exercise_13/class_cpu.py")
prev_chapter = path_2.read_text().rstrip()

# .rstrip() => To remove the last blank line at the end of the output
print(
    f"My CPU class code at previous chapter was:\n{prev_chapter}",
    f"\nAnd the type of the file that contains that text is:{type(prev_chapter)}",
)

# A file to read per object.
# path_3 = Path("../Exercise_13/*.py")
# all_python_files = path_3.read_text()

# print(f"All .py files content at this repo:{all_python_files}")


# Reading Exercise 12 line by line: Using .splitlines() method

path_3 = Path("../Exercise_12/main.py")
chapter_12 = path_3.read_text().rstrip().splitlines()

for line in chapter_12:
    print(f"{line}")

print(f"Lenght of chapter_12 in lines are: {len(chapter_12)}")

# Modifying lines
t_str = ""

# for line in chapter_12:
# t_str += f"\n| {line}"
# print(t_str)
