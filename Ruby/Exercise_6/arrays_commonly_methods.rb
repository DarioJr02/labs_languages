# frozen_string_literal: true

# This file is to practice the commonly Array methods.

arr1 = [1, 2, 3, 4, 5, 11, 80]
arr2 = [6, 7, 80, 4, 1, 3, 11]
arr3 = ['1', '2', '3', '4', '5']
arr4 = [:black, :white, :red, :blue, :yellow]
arr5 = [arr4[-1], :purple, :cian, arr4.index(:red)]

# & => Returns common elemments of two arrays, not duplicate.
def common_elements(array1, array2)
  equal_elements = (array1 & array2)

  if (equal_elements.length == 0) then puts("NOT COMMONLY ITEM FOUND!\n\n") end

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
