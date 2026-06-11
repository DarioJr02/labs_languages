# frozen_string_literal: true

# This file is to practice the next concepts:
# - chop => Removes the last character, no matter where it is.
# - chomp => Removes the newline char if this exist, if not, anything will be removed.
#
# - Format Strings and matching specifiers.

# chop
msg = %(Good afternoon.)
puts(msg.chop) # => . dot missing
puts(msg.chop.chop.chop.chop.chop) # => Missing [11..16]

# chomp
msg2 = %(It's a good day.\n)
msg2 = msg2.chomp
print(%(#{msg2}\n\n)) # => \n removed

# Format Stings
printf(%(Format Strings:\n))

n = 10
# Matching specifiers: 
# %d - Decimal.
# %f (6 float precision points by default and can be customized).
# %x - Hexadecimal.
# %o - Octal.
# %s - String.
# %p - Inspect object

printf(%(d=%d, f=%f, f_pr=%0.8f, o=%o, x=%x\n), n, n + 2.53, (n + 5.921), (n * n).to_f, ((n * 25) + (n - 4)))
printf(%(s=%s, p=%p\n), (n * 3.5), n.to_s)
