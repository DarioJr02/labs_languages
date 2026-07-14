# #frozen_string_literal: true

# The goal of this file is to learn and practice about ->
# - Multiple variable assignments.

# 1. Example
def box(obj1, obj2, obj3, obj4)
  return [obj1, obj2, obj3, obj4]
end

a, b, c, d = box('Plush', 'T-Rex', 'Candies pack', 'WWE Card')
puts("a=#{a}, b=#{b}, c=#{c}, d=#{d}")

arr = box('Plush', 'T-Rex', 'Candies pack', 'WWE Card')
print("As an Array ==> #{arr}")

a2, b2, c2, d2, e = box('Plush', 'T-Rex', 'Candies pack', 'WWE Card')
puts("\n#{e.nil?}")

a_g, h_k, l_p, q_z = ('a'..'g').to_a, ('h'..'k').to_a, ('l'..'p').to_a, ('q'..'z').to_a
puts("Alphabet:
a..g=#{a_g}
h..k=#{h_k}
l..p=#{l_p}
q..z=#{q_z}")
