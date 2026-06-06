# frozen_string_literal: true

# In this file we'll practice conditionals in Ruby.
n_1 = 3.5
n_2 = 3.5
n_3 = 3.7
n_4 = 3.8

b_1 = true
b_2 = false
b_3 = true

# Conditional: if
if n_1 == n_2
  puts "#{n_1} and #{n_2} -eq"

else
  puts "#{n_1} and #{n_2} -ne"
end

# One line conditional with ternary operator like C++:
puts n_1 != n_2 ? "#{n_1} and #{n_2} -ne" : "#{n_1} and #{n_2} -eq"

# Logic operators: ||, &&, !, !=
if b_1 && b_2 == true
  puts 'true'
else
  puts 'false'
end

# One line conditional with logic operators
puts(b_2 || !b_2 || b_3) ? 'true' : 'false'

