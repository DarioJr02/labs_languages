# frozen_string_literal: true

# This file is to practice while loops.

flag = true

# puts('OK') while flag

#while flag do 
  #puts('OK')
#end

# puts(true) while 3.step(10) { |i| print("#{i} ") } < 10

n = 0
# This loop never will be executed.
while n > 3
  n += 1
  print("n=#{n}")
end

# This loop will be executed correctly.
while n < 7
  puts("n < 13 ?: #{flag}")
  n = (n + 1)
  print("#{n} ")

  n >= 7 ? puts('n >= 13') : puts('n <= 13')
end

n1 = 1

while n1 < 5
  n1 += 1
  # Does same result => n1 = (n + 1) || n1 = n + 1
  print("n1=#{n1}")
end
puts("\n")
n1 = 0

# Single line while loops => while modifier
puts(n1)

n1 += 1 while n1 < 5
print("\nn1=#{n1}\n\n")

# Another valid syntax.
n1 = 0
puts("n1=#{n1}\n\n")

begin
  print("n1=#{n1} ")
  n1 += 1
end while n1 < 10

puts("n1=#{n1}\n\n")

# One line begin..end block loop
n1 = 0

# Only the statement that directly precedes while is part of the logic loop.
n = 0
n1 = 0

# n1 += 1 while n1 < 5

# n += 1; n1 += 1 while n1 < 5

# We now check the value of each variable.
# puts("n=#{n}, n1=#{n1}")
