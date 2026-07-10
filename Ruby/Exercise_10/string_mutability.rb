## frozen_string_literal: true

# The goal of this file is to understand ->
# String mutability.

name1 = 'John'
name2 = 'John'

puts('Checking object.id:')
puts("name1 ID ==> #{name1.object_id}")
puts("name2 ID ==> #{name2.object_id}")

name2 = 'Jessica'
puts("name2 ID ==> #{name2.object_id}")

100.times do
  name3 = 'Carl'
  puts("nam3 ID ==> #{name3.object_id}")
end
