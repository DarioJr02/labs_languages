# frozen_string_literal: true

# This file is to practice back-quotes in Ruby.
# `` => Ruby interpreter understand it as a system command.
# %x/command/ => On LINUX
# %x{command} => On WINDOWS and Linux

# Embedding commands
# puts(`pwd`) => Back-quotes.
pwd1 = `pwd`
pwd2 = %x/pwd/

# Two next will return the same result.
puts(%(This is the directory where we are working now #{pwd1}))
puts(%(This is the same result as the previous one: #{pwd2}))
# ---------------------------------------------------------------

# Executing simple programms in my system.
# x_my_browser = %x(min-browser &)
