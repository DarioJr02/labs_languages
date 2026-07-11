# frozen_string_literal: true

# The goal of this file is to practice about ->
# - Ruby design philosophy about objects.

def get_object_id(*obj)
  arr = []
  arr.push(*obj)

  arr.each { |i| puts("ID of this object ==> #{i.object_id}") }
end

obj1 = 20
get_object_id(1, '1', 2, '2', 3, '3')

# get_object_id(1.to_s, '1', 2.to_s, '2', 3.to_s, '3')
