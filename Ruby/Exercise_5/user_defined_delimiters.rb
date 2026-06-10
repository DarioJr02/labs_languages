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

# String Methods
# To find a substring => .include?(str) -> true/false || .index(str) -> n where start the sequence.
# To reverse a char sequence => string.reverse
# To uppercase => upcase
# To lowercase => downcase
#
puts(%(Next we'll see String methods in Ruby\n\n))
puts(%(#{msg1.upcase}\n#{msg2.downcase}\n#{msg3.reverse}\n#{msg4.reverse}\n
  #{msg5[3, 25]}\n#{msg6.include?('another')}\n\n))
# ------------------------------------------------------------------------------

# Padding Strings
# .ljust() && r.just() => Those 2 methods recieve 2 arguments.
# Seconde argument must be Integer or Float convertable.
msg7 = '987'
puts(msg7.ljust(10, '0'))

msg7_v2 = msg7.ljust(10, '0').to_f
puts((msg7_v2 % 2).zero?)

msg8 = '50'.rjust(10, '1').to_f
puts((msg8 % 4).zero?)
