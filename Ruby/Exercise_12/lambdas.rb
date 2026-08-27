# frozen_string_literal:true

# At this file we'll learn about ==>
# lambdas
# stabby lambda syntax
# lambdas vs procs
# testing lambdas arity.

# 1: Using lambdas
my_lambda = lambda do |p1|
  print(p1.class)
end

my_lambda2 = ->(n) { n * n }
my_lambda3 = ->(name) { print("Hello #{name}") }

my_lambda4 = lambda do |p0, p1, p2|
  print([p0.class, p1.class, p2.class])
end

# Using Procs:
my_proc = proc do |p1, p2|
  puts(p1.class)
  print(p2.class)
end

puts(my_lambda.call({ 'Name' => 'Dario' }))
puts(my_proc.call(3))
puts(my_lambda2.call(9))
puts(my_lambda3.call('Ruby'))
puts(my_lambda4.call('a', { 'Name' => 'Dario' }, 3))

# Testing return in: Procs vs Lambdas
puts('Testing return in: Procs vs Lambdas')

def test_method(p0, &block)
  puts("Testing a #{block.class} return behaviour in my: test_method")
  block.call(p0) if block_given?
  puts("If block it's a lambda this line will be executed, if not, this line will be ignored.")
end

# test_method(3) do |p0|
# puts(p0**2)
# end

def test_method_2(p1)
  my_lambda = ->(p1) { return (p1**3) }

  my_lambda.call(p1)
  puts("If block it's a lambda this line will be executed, if not, this line will be ignored.")
end

test_method_2(3)

def test_method_3(p1)
  my_proc = proc do |p1|
    return (p1**3)
  end

  my_proc.call(10)
  puts("If block it's a lambda this line will be executed, if not, this line will be ignored.")
end

test_method_3(5)

my_proc2 = proc do |p|
  return p.class
end

my_proc2.call('80')

puts('¿?')
