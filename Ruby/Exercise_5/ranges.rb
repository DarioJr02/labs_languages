# frozen_string_literal: true

# This file is to practice Ranges.

# Using two dot notation.
n1 = (0..10)
n2 = 20..35
n3 = (-10..-5)
n4 = ('a'..'z')

# Using three-dot notation => Not include the last element.
n1_tdt = (0...10)
n2_tdt = (20...35)
n3_tdt = (-10...-5)
n4_tdt = ('a'...'z')

# Reversing a range object?
n5 = ('A'..'Z')
n6 = (-20..-2)

def it_with_a_range(obj)
  # We'll iterate within this range object with a for loop.
  for i in obj do
    printf(%(#{i} ).chomp)
  end
  puts("\n")
end

printf(%(Numerical, and character ranges:\n))
it_with_a_range(n1)
it_with_a_range(n2)
it_with_a_range(n3)
it_with_a_range(n4.reverse_each)

it_with_a_range(n1_tdt)
it_with_a_range(n2_tdt)
it_with_a_range(n3_tdt)
it_with_a_range(n4_tdt)

# Reversing ranges
it_with_a_range(n5.reverse_each)
it_with_a_range(n6.reverse_each)
puts(%(\n))

# Floating Ranges and reversing them.
printf("Floating Strings:\n")
sr1 = ("abc".."ada")
it_with_a_range(sr1)
it_with_a_range(sr1.reverse_each)
