# frozen_string_literal: true

# This file is to practice the commonly Array methods.

arr1 = [1, 2, 3, 4, 5, 11, 80]
arr2 = [6, 7, 80, 4, 1, 3, 11]
arr3 = %w[1 2 3 4 5]
arr4 = %i[black white red blue yellow]
arr5 = [arr4[-1], :purple, :cian, arr4.index(:red)]

# & => Returns common elemments of two arrays, not duplicate.
def common_elements(array1, array2)
  equal_elements = (array1 & array2)

  puts('COMMONLY ITEM NOT FOUND!') if equal_elements.empty?

  for eq in equal_elements do # => Valid: for eq in (array1 & array2)
    puts(%(Commonly item: #{eq}))
  end
  puts("\n")
end

# + => Returns an array concatenating 2 arrays.
def concatenate(arr1, arr2)
  arr_concatenated = (arr1 + arr2)

  puts(%(arr_concatenated elements are:\n))

  for element in arr_concatenated do
    print(%(#{element}|))
  end

  puts("\n")
end

# - => Mainaints NOT commonly items of the first array respectly to the second.
# Commonly values and duplicates will be deleted.
def minus(arr1, arr2)
  arr_minus = (arr1 - arr2)

  puts("\nThe result of arr_minus is:\n")
  for item in arr_minus
    puts(item)
  end
end

#  << Modifies first array by appending items from the second array.
def app(arr1, arr2)
  arr3 = (arr1 << arr2)
  puts(%(The result of arr3 modified is:\n))

  delimiter = ','

  # REFACT THIS LOOP
  for item in arr3
    print(%(#{item}#{delimiter})) # How to chop the last comma?
    end
  puts("\n")
end

# .delete(object) => Modifies an array by deleting object that matches with the arg.
# return -> nil if the arg doesn't match.
def delete_arr(arr, item_to_del)
  return arr.delete(item_to_del)
end

# .delete_at => Delete an item by index.
def del_index(arr, index_to_del)
  arr.delete_at(index_to_del)
end

# .flatten and .flatten! method.
def print_array(arr)
  for i in arr do
    print(i)
  end
end

# & calls
common_elements(arr1, arr2)
common_elements(arr2, arr3)
common_elements(arr4, arr5)

# + calls
concatenate(arr1, arr2)
concatenate(arr3, arr4)

# - calls
minus(arr1, arr2)
minus(arr3, arr4)
minus(arr4, arr5)

# << calls
app(arr1, arr2)
app(arr3, arr4)

# .clear => Modifies the array removing all elements.
arr_to_clear = arr4.clone
arr_to_clear.clear
puts(arr_to_clear) # Empty Output

# .compact => Returns array with nil items removed.
arr_to_compact = [true, :ok, nil, 3, nil, Array.new(3, nil)] # => It ignores nested nil elements? => NO.
print("#{arr_to_compact}\n")

arr_to_compact2 = arr_to_compact.compact
print(%((#{arr_to_compact2})\n))

# delete() calls
arr_to_del = arr4.clone
delete_arr(arr_to_del, :blue) # => :blue object deleted.
puts(arr_to_del)

# delete_at() calls
del_index(arr2, -1) # => 11 removed.
puts(arr2)

# .flatten and .flatten! method calls() => Upacks nested sub-arrays, n level is opt as arg.
puts("\n.flatten method:\n\n")
arr_ascii_table = Array.new(1, 0.to_s)
arr_ascii_table[0] = ('A'..'Z').to_a
arr_ascii_table[1] = ('a'..'z').to_a
print_array(arr_ascii_table)

arr_ascii_table.flatten! # => .flatten! Modifies the original array, .flatten doesn't.
print(arr_ascii_table)

# .reverse method.
puts("\n\n.reverse method:\n\n")
print(arr1.reverse!)

# .sort method.
puts("\n\n.sort method:\n\n")
print(arr2.sort!)
