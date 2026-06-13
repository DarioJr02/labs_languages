# frozen_string_literal: true

# This file is to practice string literals.

# Strings and arrays.
puts(%(This is a single-quoted string.))
puts(%(This is a double-quoted string by default)) # => == %Q
p(%w[This is an single-quoted array, #{3**2}])
p(%W[This is a double-quoted array, to prove it: #{3**2}])

# Symbols
p(%s(red))

p(%(This is a command: #{%x`pwd`}))
