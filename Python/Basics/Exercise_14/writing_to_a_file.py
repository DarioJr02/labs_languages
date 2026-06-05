"""Writing in files."""

# Import modules
from pathlib import Path

path = Path("./O_Text.md")

content = "Esta es una prueba de escritura en la cuál el texto tiene varias lineas."
content += "\nEsta es la segunda línea."
content += "\nEsta es la tercera línea."
content += f"\nEsta es la cuarta línea con una operación aritmética: {9 * 9}"
content += f"\nQuinta línea con operación aritmética: {str(8**2)}"
content += "\n"

path.write_text(content)

l_numbers = []
for n in range(101):
    l_numbers.append(n)

# Why it only stores the last item?

for number in l_numbers[15:78:2]:
    content += f"\t{str(number)}"


path.write_text(content)

# The problem with the preovious path variable is,
# that the file is overrided everytime we save changes.
