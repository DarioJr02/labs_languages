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

  if (equal_elements.length == 0) then puts('NOT COMMONLY ITEM FOUND!') end

  for eq in equal_elements do # => Valid: for eq in (array1 & array2)
    puts(%(Commonly item: #{eq}))
  end
end

common_elements(arr1, arr2)
common_elements(arr2, arr3)
common_elements(arr4, arr5)
