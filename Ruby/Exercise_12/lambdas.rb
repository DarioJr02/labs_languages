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
