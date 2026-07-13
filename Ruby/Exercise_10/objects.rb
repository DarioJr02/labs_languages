# frozen_string_literal: true

# The goal of this file is to practice about ->
# - Ruby design philosophy about objects.
# - Canonical values.

# 1. Get ID of an object.

def get_object_id(*obj)
  arr = []
  arr.push(*obj)

  arr.each { |i| puts("ID of this object ==> #{i.object_id}") }
end

# get_object_id(1, '1', 2, '2', 3, '3', 3)

# get_object_id(1.to_s, '1', 2.to_s, '2', 3.to_s, '3')

# 2. Check if a value is canonical.

def compare_id(obj1, obj2)
  puts(obj1.object_id.equal?(obj2.object_id) ? "#{obj1} is a canonical value | Type = #{obj1.class}" : "#{obj1} it's not a canonical value.")
end

def mk_value(value)
  value
end

# - Integer
puts('Integer:')
compare_id(10, 10)
compare_id(Integer(10), Integer(10))
compare_id('10'.to_i, '10'.to_i)
compare_id((100.0 / 10.0).to_i, 100 / 10)
compare_id(mk_value(10), mk_value('10'.to_i))
compare_id(Float(11.1).to_i, Float(11.1).to_i)

# - FLoat
puts("\nFloat:")
f = 11.1
compare_id(11.1, 11.100000000)
compare_id(Float(11.1), Float(11.0))
compare_id('11.1'.to_f, '11.1'.to_f)
compare_id(11.1 / 1, 11.1 / 1)
compare_id(mk_value(11.1), mk_value(11.1))
compare_id(Float(11).to_f, Float(11).to_f)
compare_id(f, Float(f))

# - String
puts("\nString:")
s = 'Ruby'
compare_id('Ruby', 'Ruby')
compare_id(11.to_s, Integer(11).to_s)
compare_id(11.1.to_s, Float(11.1).to_s)
compare_id(String('Ruby'), String('Ruby'))
compare_id(:Ruby.to_s, :Ruby.to_s)
compare_id('Ruby'.to_s, 'Ruby'.to_s)
compare_id('Ruby'.delete_suffix('y'), 'Ruby'.delete_suffix('y'))
compare_id(mk_value('Ruby'), mk_value('Ruby'))
compare_id(s, String(s))

# - Array
puts("\nArray:")
compare_id([1, 2], [1, 2])
compare_id([], [])
compare_id((0..2).to_a, (0..2).to_a)
compare_id(Array([1, 2]), Array([1, 2]))
compare_id('Ruby Language'.split(' '), 'Ruby'.split(' '))
compare_id(mk_value([1, 2]), mk_value([1, 2]))
compare_id(([1, 2] << 3), ([1, 2] << 3))

# - Hash
puts("\nHash:")
h1 = { 'ID' => 0 }
compare_id({ 'ID' => 0 }, { 'ID' => 0 })
compare_id(h1, { 'ID' => 0 })
compare_id(mk_value(h1), mk_value({ 'ID' => 0 }))
compare_id(Hash({ 'ID' => 0 }), Hash({ 'ID' => 0 }))

# - True

# - False

# - nil

# - Symbol
