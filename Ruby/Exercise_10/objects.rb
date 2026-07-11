# #frozen_string_literal: true

# The goal of this file is to practice about ->
# - Ruby design philosophy about objects.

def get_object_id(*obj)
  arr = []
  arr.push(*obj)

  arr.each { |i| puts("ID of this object ==> #{i.object_id}") }
end

obj1 = 20
get_object_id(1, '1', 2, '2', 3, '3', 3)

# get_object_id(1.to_s, '1', 2.to_s, '2', 3.to_s, '3')

def compare_id(obj1, obj2)
  puts(obj1.object_id.equal?(obj2.object_id),
       obj1.object_id.equal?(obj2.object_id) ? "#{obj1} is a canonical value." : "It's not a canonical value.")
end

n = 10
n2 = 10
compare_id(n, n2)

s1 = 'hey'
s2 = 'hey'
compare_id(s1, s2)

f1 = 3.10
f2 = 3.10
compare_id(f1, f2)

h1 = { 'ID' => 11 }
h2 = { 'ID' => 11 }
compare_id(h1, h2)

t = true
f = true
compare_id(t, f)

sym1 = :a
sym2 = :a
compare_id(sym1, sym2)

nil1 = nil
nil2 = nil
compare_id(nil1, nil2)

compare_id(Float(1.1), Float(1.1))
