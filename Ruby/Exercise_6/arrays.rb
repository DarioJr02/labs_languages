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

# Indexing into an Array.
print("#{arr_sq[-5..6]}\n")
print("#{arr_dq[15].inspect}\n") # => Returns nil
print("#{arr_dq[-1].inspect}\n")
print(%(#{arr_dq.length}\n))
print(%(#{arr_imp.length}\n))

arr_dq.length == arr_imp.length ? puts(true) : puts(false)


