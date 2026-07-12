# frozen_string_literal: true

# The goal of this file is to practice about ->
# - Ruby design philosophy about objects.

def get_object_id(*obj)
  arr = []
  arr.push(*obj)

  arr.each { |i| puts("ID of this object ==> #{i.object_id}") }
end

# get_object_id(1, '1', 2, '2', 3, '3', 3)

# get_object_id(1.to_s, '1', 2.to_s, '2', 3.to_s, '3')

# 1. Check if a value is canonical.

def compare_id(obj1, obj2)
  puts(obj1.object_id.equal?(obj2.object_id) ? "#{obj1} is a canonical value | Type = #{obj1.class}" : "#{obj1.class} it's not a canonical value.")
end

# - Integer
compare_id(10, 10)
compare_id(Integer(10), Integer(10))
compare_id('10'.to_i, '10'.to_i)
compare_id((100.0 / 10.0).to_i, (100 / 10))

# - FLoat

# - String

# - Array

# - Hash

# - True

# - False

# - nil

# - Symbol
