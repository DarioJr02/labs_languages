# frozen_string_literal: true

# This file is to practice user-defined String delimiters.

x = 2.5
y = (x**3)

# -------------------------------------------------------------------------------------------------
msg1 = %/This IS the same as double-quoted string./
puts(msg1.downcase)

msg2 = %/This is also the same as double-quoted string./
puts(msg2.upcase)

msg3 = %/#{y}/
puts(msg3)

msg4 = %q/This is a single-quoted string, to prove it: #{y} is not evaluated as an arit operation./
puts(msg4)

msg5 = %(This is another double-quoted string, to prove it #{y + 1.to_f}) # => rubocop recommends () as delimiter.
puts(msg5)

msg6 = %Q*This is another double-quoted string: #{(y + 2.to_f) * (1.to_f * y)}*
puts(msg6)
# --------------------------------------------------------------------------------------------------
