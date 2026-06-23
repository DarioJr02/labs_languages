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

n1 = 0

# This loop will be executed correctly.
puts("\n1: Multiline while loop (RECOMMENDED):")
while n1 < 5 # => do is optional.
  n1 += 1
  # Does same result => n1 = (n + 1) || n1 = n + 1
  print("n1=#{n1}")
end
puts("\n")
n1 = 0
puts(n1)

# Single line while loops => while modifier
# Only the statement that directly precedes while is part of the logic loop.
puts("\n2: Single line while loop (-ONLY IF THE LOGIC BEFORE WHILE-):")
n1 += 1 while n1 < 5
print("n1=#{n1}\n\n")

# begin..end blocks.
puts("\n3: Multiline begin..end block (NOT RECOMMENDED):")
n1 = 0
puts("n1=#{n1}\n\n")

begin
  print("n1=#{n1} ")
  n1 += 1
end while n1 < 10

puts("\nn1=#{n1}\n\n")

# One line begin..end block loop
puts("\n4: Single line begin..end block (NOT RECOMMENDED):")
n1 = 0
begin print("n1=#{n1} "); n1 += 1 end while n1 < 13
puts("\nn1=#{n1}\n")

begin print("n1=#{n1} "); n1 -= 1 end while n1 > 0
puts("\nn1=#{n1}")

# until loops.
puts("\n5: Multiline until loops (RECOMMENDED):")

until n1 == (27 / 3) # => do is optional.
  n1 += 1
  print("n1=#{n1} ")
end
puts("\nn1=#{n1}")

# Single line until loops.
puts("\n6:Single line until loops (NOT RECOMMENDED):")
n1 = 0
until n1 == (4 * 3) do print("n1=#{n1}"); n1 += 1 end
puts("\nn1=#{n1}\n\n")

until n1 == (200 - 200) do print("n1=#{n1}"); n1 -= 1 end
puts("\nn1=#{n1}")

# loop
puts("\n7: loop:")

arr = (10..20).to_a

i = 0
loop do
  print("#{arr[i]} ")
  i += 1

  break if i == arr.length
end
puts("\n")
i = 0 # => We decrement the iterator variable to use it again.

arr2 = ((40 + 0)..(50 - 4)).to_a
loop do
  print("#{arr2[i]} ")
  i += 1

  break if i == arr2.length
end
i = 0
puts("\n")

# Single line loop
puts("\nSingle line loop:")
loop { print("#{arr2[i]} "); i += 1; break if i == arr2.length } # => Use .each preferred or slice it in multiple lines.
