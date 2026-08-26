# frozen_string_literal: true

# At this file we'll learn about ==>
# yield
# block_given?
# capture block as a parameter.
# using method parameters as block parameters.

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

# Summary

def y_method
  puts('Starting: y_method.')
  yield if block_given?
  puts('Ending: y_method.')
end

y_method do
  puts((0..2).to_a)
end

def y_method_h
  puts('Starting: y_method.')
  yield if block_given?
  puts('Ending: y_method.')
end

3.times do
  y_method_h do
    puts('block')
  end
end

# Capture block as a parameter
puts('Capture block as a parameter:')

def bp_method(&block)
  puts('Starting: bp_method.')
  block.call if block_given?
  puts('Ending: bp_method.')
end

bp_method do
  puts('Block as parameter.')
end

# Using method parameter as a block parameter.
p = { 'Name' => 'Pepe', 'Age' => 39 }
puts("\nUsing method parameter as a block parameter:\n")

def bp_method2(p, &block)
  puts('Starting: bp_method2.')
  block.call(p) if block_given?
  puts('Ending: bp_method2.')
  ref = block
end

bp_method2(p) do |p|
  p.each { |key, value| puts("#{key}: #{value}") }
end
