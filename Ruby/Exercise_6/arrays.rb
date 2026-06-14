# frozen_string_literal: true

# This file is to practice arrays and some hashes.

arr_sq = %w['one' 'two' 'three' 4 #{3 * 5}] # => Single-quoted array.
arr_dq = %W['one' 'two' 'three' 4 #{3 * 5}] # => Double-quoted array.
arr_imp = ['one', 'two', 'three', '4'.to_f, (5 * 3).to_c]

print(%(#{arr_sq}\n))
print(%(#{arr_dq}\n))
print("#{arr_sq.inspect}\n")
print("#{arr_dq.inspect}\n")
print(%(#{arr_imp.inspect}\n))

# Indexing into an Array.
print("#{arr_sq[-5..6]}\n")
puts("#{arr_dq[15].inspect}\n") # => Returns nil, puts checks the last character, only if it's a jump line, == ignored.
print("#{arr_dq[-1].inspect}\n")
print(%(#{arr_dq.length}\n))
print(%(#{arr_imp.length}\n))

arr_dq.length == arr_imp.length ? puts(true) : puts(false)

# NilClass
puts("#{arr_imp[5].nil?}") # => Returns true.
puts("#{arr_imp[2].nil?}") 
puts("#{arr_imp[5].class}") # => Returns NilClass
puts("#{arr_imp[2].class}") # => Returns true.

# Methods
def to_ascii(character)
  return character.ord
end

# Heterogeneous Arrays.
arr_h = [3, 3.93.to_f, 'third'.capitalize, 'fourth'.to_sym, %W['one', 'two', 'three'], to_ascii("h")]
puts(arr_h)

# Checking array items class.
def check_item_class(arr)
  puts("The class type of the items in the next container are:\n\n")

  for item in arr do
    puts(item.class)
  end
end

check_item_class(arr_h)
