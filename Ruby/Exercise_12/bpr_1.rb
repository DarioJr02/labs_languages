# frozen_string_literal:true

# At this chapter we'll learn about ==>
# Blocks
# Procs
# Lambdas

# 1: Blocks

2.times do
  puts('Ejecución de mi primer bloque.')
end

x = 3.times.map { 'Un bloque siempre va asociado a un método.' }
puts(x)

# A block is not an object.
# { puts('Hey') }  ==> BAD.

# Block delimiters:
y = 2.times.map do
  'Esto es igual a:'
end

z = 2.times.map { 'Esto' }

puts(y, z)

# Block parameters:
puts("\nBlocks Parameters:")
5.times do |n|
  puts(n**2)
end

[10, 11, 12].each do |n|
  puts(n * n)
end

[30, 40].each do |a, b|
  puts(a, b)
end

# Blocks multiple parameters:
['a', 'b', 'c'].each_with_index do |value, index|
  puts("#{index}: #{value}")
end

person = { 'Name' => 'Dario', 'Age' => 28 }

person.each do |key, value|
  puts("#{key}: #{value}")
end

person.each { |key, value| puts("#{key} => #{value}") }

# Block parameters details:
(10..20).to_a.each_with_index do |value, index|
  print("[#{index}: #{value}]")
end
