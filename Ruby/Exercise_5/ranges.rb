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
n3_tdt = (-5...-10)
n4_tdt = ('a'...'z')

# Reversing a range object?

def it_with_a_range(obj)
  # We'll iterate within this range object with a for loop.
  for i in obj do
    printf(%(#{i} ))
  end
  puts("\n")
end

it_with_a_range(n1)
it_with_a_range(n2)
it_with_a_range(n3)
it_with_a_range(n4)
