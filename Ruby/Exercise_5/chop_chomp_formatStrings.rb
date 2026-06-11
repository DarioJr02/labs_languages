# frozen_string_literal: true

# This file is to practice the next concepts:
# - chop => Removes the last character, no matter where it is.
# - chomp => Removes the newline char if this exist, if not, anything will be removed.

# chop
msg = %(Good afternoon.)
puts(msg.chop) # => . dot missing
puts(msg.chop.chop.chop.chop.chop) # => Missing [11..16]

# chomp
msg2 = %(It's a good day.\n)
msg2 = msg2.chomp
print(msg2) # => \n removed
