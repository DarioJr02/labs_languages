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

m1.each do |a, b, c| puts("#{a}:#{b}:#{c}") end # Same result but before is recommended.Symbol

# .upto and .downto methods
puts("\n.upto and .downto methods:\n")

# .upto(limit) with int values.
n = 0
n.upto(3**2) { |i| print("#{i} ") }

puts("\n")

# .upto(limit) with floats
# f = 3.1
# f.upto(4.5) { |i| print("#{i} ") }
# .upto() are not defined to float values.
# values between 3.1 to 4.5 are potentially infinite.

# .upto(limit) with chars
c = 's'
c.upto('z') { |i| print("#{i} ") }

puts("\n")

# .upto() with array

# You can do the same with multidimensional Arrays.
arr = (25..35).to_a
arr.each { |i| print("#{i.upto(arr.last + 1) { |o| print("#{o} ") }} ") }

# .downto

puts("\n\n.downto() method:\n")

# with int values.
n2 = 9
n2.downto(4 - 1) { |i| print("#{i} ") }

puts("\n\n")

# with chars
c1 = 'z'
c1.ord.downto('w'.ord) { |c| print("#{c.chr} ") } # => String to ASCII => ASCII to String.

puts("\n\n")
