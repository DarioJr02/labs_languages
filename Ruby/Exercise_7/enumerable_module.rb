# frozen_string_literal: true

# This file is to practice some methods that Enumerable module provide us.

# .collect method.
x = (5..10).to_a.collect { |x| x * 2 }
puts(x)
