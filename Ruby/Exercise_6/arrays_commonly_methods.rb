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

# & calls
common_elements(arr1, arr2)
common_elements(arr2, arr3)
common_elements(arr4, arr5)

# + calls
concatenate(arr1, arr2)
concatenate(arr3, arr4)
