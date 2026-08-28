# frozen_string_literal:true

# At this fille we'll learn about ==>
# Symbols

# 1: Syntax and interpolation.
puts('Syntax and interpolation:')
my_sym = :ruby
puts(my_sym)

my_sym2 = :"Python@#{my_sym}"
my_sym3 = :'Python@#{my_sym}'
puts(my_sym2)
puts(my_sym3)

# 2: Strings vs Symbols
puts("\nStrings vs Symbols:")
my_sym4 = :ruby
my_str1 = 'Ruby'
my_str2 = 'Ruby'

puts(my_sym.equal?(my_sym4))
puts(my_sym.object_id)
puts(my_sym4.object_id)
puts(my_str1.equal?(my_str2))
