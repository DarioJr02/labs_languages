# frozen_string_literal: true

# This file is to practice Loops, iterators.
# Blocks, blocks parameters.
#

require 'matrix'

# Array
a1 = (30..40).to_a
a1.flatten!
print("\na1: #{a1}\n")

# Hash
h1 = { 'Name1:' => 'Susana',
       'Name2:' => 'Armando',
       'Name3:' => 'Hector' }
h1.default = 'N\A'

print("h1: #{h1}\n")

str = 'Hello World'
print("\nstr = #{str}\n")

# .each Method

a1.each do |i|
  print("#{i} ")
end
puts("\n")

a1.each { |i| print("#{i} ") }
puts("\n")

# -------------------------------

h1.each do |i|
  print("#{i} ")
end
puts("\n")

h1.each { |i| print("#{i} ") }
puts("\n")

h1.each_key { |k| print("#{k.upcase} ") }
puts("\n")

h1.each_value { |v| print("#{v} ") }
puts("\n")

# ------------------------------------------
str.each_char { |c| print("#{c.ord} ") }
puts("\n")

str.each_byte { |b| print("#{b} ") }
puts("\n")

# With literal values
('a'..'z').to_a.each { |c| print("#{c} ") }
puts("\n")

('a'..'z').to_a.each_slice(3) { |c| print("#{c} ") }
puts("\n")

# do keyword can be omitted but not recommended.
for c in ('a'..'f').to_a
  print("#{c} ")
end
puts("\n")

# Block and block parameters.
v1 = Vector[(5..10).to_a]
v2 = Vector[('f'..'k').to_a]
v3 = Vector[(10..15).to_a]

m1 = Matrix.rows([v1, v2, v3])
puts("\n#{m1}\n\n")

# Block with some block parameters.
m1.each { |a, b, c| puts("#{a}:#{b}:#{c}") } # Aquí la salida se trunca por el tamaño de la matriz?

m1.each do |a, b, c| puts("#{a}:#{b}:#{c}") end # Same result but before is recommended.
