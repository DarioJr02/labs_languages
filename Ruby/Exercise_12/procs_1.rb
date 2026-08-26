# frozen_string_literal: true

# At this file we'll learn about ==>
# Procs

my_proc = proc do
  print("This is my first #{self.class}, who contains a block.")
end

puts(my_proc.call)

# Using a proc in a method.
puts('Using a proc in a method:')
def p_method(p0, &block)
  puts("Using my first #{block.class} inside a method:")
  block.call if block_given?
end

p_method(my_proc) do
  puts('This is my first block in: p_method.')
end

# Using blocks with multiple parameters.
puts("\nUsing blocks with multiple parameters:")
a1 = (1..5).to_a
a2 = (10..15).to_a

my_proc2 = proc { print("This is my second #{self.class}, who contains a block.") }

def p_method_2(p0, p1, &block)
  puts("Using my second #{block.class} inside a method:")
  block.call(p0, p1) if block_given?
end

p_method_2(a1, a2) do |x, y|
  x.each { |n| print("#{n * 2} ") }
  puts("\n")
  y.each { |n| print("#{n * 3} ") }
end

# Testing block parameters:
def p_method_3(p0, p1, &block)
  puts("Using my third #{block.class} inside: p_method_3:")
  block.call(p0, p1) if block_given?
end

p_method_3(a1, a2) do |x, y, z, a, b, c|
  x.each { |n| print("#{n * 4} ") }
  puts("\n")
  y.each { |n| print("#{n * 5} ") }
  puts("\n#{z.class}")
  puts(a.class)
  puts(b.class)
  puts(c.class)
end

def p_method_4(p0, p1, &block)
  puts("Using my fourth #{block.class} inside: p_method_4:")
  block.call(p0, p1, 3, 4, 5) if block_given?
end

p_method_4(a1, a2) do |x, y, z|
  puts(x.class)
  puts(y.class)
end
