# frozen_string_literal: true

# The goal of this file is to practice:
# Precedence and asociativity with logic operators.

# Precedence

# Using unary operator: ?
(9==9) && (7==1) ? puts('true') : puts('false')
(9==9) && !(7==1) ? puts('true') : puts('false')

# Using if as expression modifier. => if has a higher precedence.
puts('true') if !((true) or (true)) || (8.2==8.1)

if !(true or true) || (9.2==1.3) then
  puts('true')
else
  puts('false')
end
