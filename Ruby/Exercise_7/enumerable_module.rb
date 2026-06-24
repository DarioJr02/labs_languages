# frozen_string_literal: true

# This file is to practice some methods that Enumerable module provide us.

# .collect method.
puts('1: .collect:')
x = (5..10).to_a.collect { |x| x * 2 }
puts("x=#{x} | type=#{x.class}")

y = ('a'..'g').to_a.collect { |x| x.upcase }
puts("y=#{y} | type=#{y.class}")

z = ('y'..'z').to_a.collect { |x| x.ord * x.ord }
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
