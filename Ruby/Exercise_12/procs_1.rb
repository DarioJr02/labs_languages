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
  block.call(p0, p1, block) if block_given?
end

p_method_2(a1, a2) do |x, y|
  x.each { |n| print("#{n * 2} ") }
  puts("\n")
  y.each { |n| print("#{n * 3} ") }
end
