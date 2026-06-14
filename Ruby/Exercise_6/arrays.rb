# frozen_string_literal: true

# This file is to practice arrays and some hashes.

arr_sq = %w['one' 'two' 'three' 4 #{3 * 5}] # => Single-quoted array.
arr_dq = %W['one' 'two' 'three' 4 #{3 * 5}] # => Double-quoted array.
arr_imp = ['one', 'two', 'three', '4', (5 * 3)]

print(%(#{arr_sq}\n))
print(%(#{arr_dq}\n))
print("#{arr_sq.inspect}\n")
print("#{arr_dq.inspect}\n")
print(%(#{arr_imp.inspect}\n))
