# #frozen_string_literal: true

# This file is to practice back-quotes in Ruby.
# `` => Ruby interpreter understand it as a system command.
# %x/command/ => On LINUX
# %x{command} => On WINDOWS and Linux

# Embedding commands
# puts(`pwd`) => Back-quotes.
pwd1 = `pwd`
pwd2 = %x/pwd/

# Two next will return the same result.
# puts(%(This is the directory where we are working now #{pwd1}))
# puts(%(This is the same result as the previous one: #{pwd2}))
# ---------------------------------------------------------------

# Executing simple programms in my system.
# x_my_browser = %x(min-browser &)
# --------------------------------------------------------------

# Concatenation
hostname = %x/echo $HOSTNAME/
greet1 = %(Hello ) "#{hostname.ljust(15, 'x')}" " 1st time."
puts(greet1)

# %x/command/ => Adds a new line.
greet2 = "Hello " << "#{hostname}" << "2th time."
puts(greet2.downcase)

greet3 = %(Hello ) + %(#{hostname.reverse}) + " 3th time."
puts(greet3.upcase)

# ----------------------------------------------------------------

# FixNum integers range:
# 65 - 90 => Uppercase
# 97 - 122 => Lowercase

puts(greet3 << %(Last time.))
# -----------------------------------------------------------------

# Commas
not_s = %(This ), %( is), 'not', 'a', %(string)
puts(%(#{not_s}\n\nThe type of not_s is: ) << %(#{not_s.class}))

not_s2 = 'i', 'like', 'pineapples', 'and', %(meat)
puts(%(\n#{not_s2}))
puts(%(The type of not_s2 is: ) << "#{not_s2.class}")

# Indexing into a string

msg_to_index = %(Hello #{hostname}) << 'b'
puts(msg_to_index[0, 4])
puts(msg_to_index[2, 7])
puts(msg_to_index[9, 2])
puts(msg_to_index[-1].ord)
puts(msg_to_index[-8, 7])
puts(%(#{msg_to_index[3, 12].ord}))
