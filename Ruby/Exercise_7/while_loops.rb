# frozen_string_literal: true

# This file is to practice while loops.

flag = true

# puts('OK') while flag

#while flag do 
  #puts('OK')
#end

# puts(true) while 3.step(10) { |i| print("#{i} ") } < 10

n = 0

while n < 13
  puts("n < 13 ?: #{flag}")
  n = (n + 1)
  print("#{n} ")

  n >= 13 ? puts('n >= 13') : puts('n <= 13')
end
puts("\n")
