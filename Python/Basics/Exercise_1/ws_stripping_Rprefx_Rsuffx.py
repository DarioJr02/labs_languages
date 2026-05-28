"""Adding whitespaces to strings with tabs or newlines"""

text_1 = """Esta es la primera línea, puede contener apóstrofes (') o citaciones "Así por ejemplo". """
text_2 = """Esta es la segunda línea, \t aquí puedo hacer \ttabulaciones, a que sí."""
text_3 = """Esta\tes\n\tla\n\ttercera línea con una citación: "La \n\tsinceridad\n\tvale\nmucho." """

# print(text_1)
# print(text_2)

print(f"[{text_1.upper()}]\n[{text_2.lower()}]\n[{text_3.title()}]")
"""Stripping whitespace"""
text_4 = """ |@#~½¬{[]}    Aquí usamos .strip() = Hace ws stripping hasta el inicio del contenedor y hasta el final.          |@#~½¬{[]} """
text_5 = """                        |@#~½¬{[]} Aquí usamos .lstrip()                       """
text_6 = """                            Aquí usamos .rstrip() |@#~½¬{[]}"""

print(f"{text_4.strip(" |@#~½¬{[]}")}")
print(f"{text_5.lstrip(" |@#~½¬{[]}")}")
print(f"{text_6.rstrip(" |@#~½¬{[]}")}")

text_7 = """    Aquí usamos .strip() + otro método.           """
text_8 = """                        Aquí usamos .lstrip() + otro método.                       """
text_9 = """                            Aquí usamos .rstrip() + otro método. """

print(f"[{text_7.strip().title()}]")
print(f"[{text_8.lstrip().upper()}]")
print(f"[{text_9.rstrip().lower()}]")

"""Removing prefixes."""

url_1 = """https://www.meta.ai"""
url_2 = """https://www.google.com"""
url_3 = """https://www.elements.envato.com"""

# Prefixes + ws stripping
url_4 = """|@#~½¬{[]} https://youtube.com |@#~½¬{[]}"""
url_5 = """|@#~½¬{[]} https://facebook.com"""
url_6 = """https://instagram.com |@#~½¬{[]}"""

print(f"[{url_1.removeprefix("""https://""")}]")
print(f"[{url_2.removeprefix("""https://""")}]")
print(f"[{url_3.removeprefix("""https://""")}]")

print(f"{url_4.removeprefix("""https://""").strip(" |@#~½¬{[]}")} - [Prefix not removed]") #Prefix not removed, bad method chaining.
print(f"{url_5.removeprefix("""https://""").lstrip(" |@#~½¬{[]}")} - [Prefix not removed]") #Prefix not removed, bad method chaining.
print(f"{url_6.removeprefix("""https://""").rstrip(" |@#~½¬{[]}")}") #Prefix not removed.

print(f"{url_5.lstrip(" |@#~½¬{[]}").removeprefix("https://")}") #Prefix removed, good method chaining.
print(f"{url_6.rstrip(" |@#~½¬{[]}").removeprefix("https://")}") #Prefix removed, good method chaining.


"""Removing suffixes."""

url_7 = """][{¬½~#@| c++.cpp |@#~½¬{[]}"""
url_8 = """}][{¬½~#@| python.py"""
url_9 = """rust.rs }][{¬½~#@|}]"""
url_10 = """ada.adb"""

print(f"{url_7.strip(" |@#~½¬{[]}").removesuffix(".cpp")}")
print(f"{url_8.lstrip(" |@#~½¬{[]}").removesuffix(".py")}")
print(f"{url_9.rstrip(" }][{¬½~#@|}]").removesuffix(".rs")}")
print(f"{url_10.removesuffix(".adb")}")





