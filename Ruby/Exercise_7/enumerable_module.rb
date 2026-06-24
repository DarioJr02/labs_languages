# frozen_string_literal: true

# This file is to practice some methods that Enumerable module provide us.

# .collect method.
puts('1: .collect:')
x = (5..10).to_a.collect { |x| x * 2 }
puts("x=#{x} | type=#{x.class}")

y = ('a'..'g').to_a.collect { |x| x.upcase }
puts("y=#{y} | type=#{y.class}")

z = ('P'..'Z').to_a.collect { |x| x.downcase }
puts("z=#{z} | type=#{z.class}")

# .include method
puts("\n2: .include?():")

# Find a value in x
puts('Tell me a value to find in x: ')
value_to_find = gets.chomp
x_p = x.include?(value_to_find.to_i)
puts("x has the value: #{value_to_find}? -> #{x_p}")

# Find a value in y
puts("\nTell me a value to find in y: ")
value_to_find_y = gets.chomp # => Jump line at the end is deleted with .chomp
y_p = y.include?(value_to_find_y)
puts("y has the value: #{value_to_find_y}? -> #{y_p}")

# Find a value in z
puts("\nTell me a value to find in z: ")
v_to_find_z = gets.chomp
z_p = z.include?(v_to_find_z)
puts("z has the value: #{v_to_find_z}? -> #{z_p}")

# .min
print("\n3: .min:")

print("\nmin value in x is -> #{x.min}\n
min value in y is -> #{y.min}\n
min value in z is -> #{z.min}\n")

# .max
print("\n4: .max:")
print("\nmax value in x is -> #{x.max}\n
max value in y is -> #{y.max}\n
max value in z is -> #{z.max}\n")

# Enumerable methods with hashes
print("\nEnumerable methods with hashes:")

h = { 'me' => 'c',
      'you' => 'c++',
      'he' => 'go',
      'her' => 'golang',
      'him' => 'rust' }
