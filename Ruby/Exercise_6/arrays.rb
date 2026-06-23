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
  character.ord
end

# Heterogeneous Arrays.
arr_h = [3, 3.93.to_f, 'third'.capitalize, 'fourth'.to_sym, %W['one', 'two', 'three'], to_ascii('h')]
puts(arr_h)

# Checking array items class.
def check_item_class(arr)
  puts("\nThe class type of the items in the next container are:\n")

  for item in arr do
    puts(%(Item: #{item} | Item Class: #{item.class}))
  end
  puts(%(Array Size: #{arr.length}))
end

check_item_class(arr_h)

# Defining an array of filenames.
arr_f = [`ls Ruby`]
puts(%(The filename array length size is: #{arr_f.length}, and it's items are:))
puts(arr_f)
check_item_class(arr_f)

# Creating a specific size array.

# First argument takes the size, and the second the element.
arr_sp = Array.new(4) # => (nil, nil, nil. nil)
arr_sp2 = Array.new(4) # => Empty array.
arr_sp3 = Array.new(4, 'Example')
arr_sp4 = Array.new(4, [])
arr_sp5 = Array.new(4, {})
arr_sp6 = Array.new(3, 0.to_f)
arr_sp7 = Array.new(4, 1..10)
arr_sp8 = Array.new(2, 'a'.to_sym)

check_item_class(arr_sp)
check_item_class(arr_sp2)
check_item_class(arr_sp3)
check_item_class(arr_sp4)
check_item_class(arr_sp5)
check_item_class(arr_sp6)
check_item_class(arr_sp7)
check_item_class(arr_sp8)

# Multidimensional Arrays.

arr_m = Array.new(2, Array.new(4, 'Hey'.to_sym))
check_item_class(arr_m)

# Copying arrays
arr_m2ref = arr_m.reverse! # => This is NOT a copy | .reverse => Returns a copy.
check_item_class(arr_m2ref)

# Copying an Array.
arr_m3 = arr_m.clone
arr_m.clear
# arr_m2ref.clear

check_item_class(arr_m3)
puts(%(arr_m length: #{arr_m.length} and arr_m2def length: #{arr_m2ref.length}))

# Array comparison
# Results:
# -1 lhs_op -l rhs_op == rhs_op -gt lhs_op
# 0 -eq
# 1 lhs_op -gt rhs_op
puts(%(\nArrays comparison using spaceship operator (<=>):\n))
arr1 = [10, 5, 6]
arr2 = [4, 5, 6, 9, 9, 9]
puts((arr1 <=> arr2).zero?)

# Comparing array length.
puts(%(Comparing array length:\n#{arr1.length <=> arr2.length}))

# Invalid comparison?
arr3 = ['1', '2', '3']
arr4 = [1, 2, 3]
puts(%(Testing invalid comparison: #{arr1 <=> arr2}))
puts(%(Previous result is because #{arr3[0].ord} ASCII representation is -gt #{arr4[1]}))

# Blocks
arr5 = [9, 3, 4, 5, 6]

arr5.sort{ |a,b| a.to_s <=> b.to_s} # Schedule to refact

# Modules preview

# Testing modules and Array comparison operator (<=>).
class MyArray < Array
  include Comparable

  def <=>(other)
    return self.length <=> other.length
  end
end

# Comparing both arrays length.
arr6 = MyArray.new(2, 1)
arr7 = MyArray.new(3, 2)

puts(%(Comparing MyArray length: #{arr6 <=> arr7}))
