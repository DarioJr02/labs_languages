# frozen_string_literal: true

# At this file we'll learn about ==>
# yield
# block_given?

# 1: yield
def a_method
  puts("I'm beginning the a_method scope.")
  yield
  yield
  puts("I'm exiting the a_method scope.")
end

a_method do
  puts('This is a block.')
end

a_method do
  puts('This is another block.')
end

# 2: block_given?

def a_method_bg
  puts("I'm beginning the a_method_bg scope.")
  yield if block_given?
  puts("I'm exiting the a_method_bg scope.")
end

a_method_bg

puts("\n")
a_method_bg do
  puts('This is a block inside a_method_bg')
end

def test
  yield
end

test
