# frozen_string_literal:true

# At this file we'll learn about ==>
# Closures.

# 1: Procs and Lambdas are closures?.

puts('Starting program:')
language = 'Ruby'

my_proc = proc do
  puts(language.upcase)
end

my_lambda = lambda do
  puts(language.upcase)
end

my_proc.call
my_lambda.call

# 2: Using methods:
def test_method(p_or_l)
  p_or_l.call
end

test_method(my_proc)
test_method(my_lambda)

def test_method2
  a1 = (9..15).to_a
  my_proc = proc do
    a1.each { |n| print("#{n / 1} ") }
    puts("\n")
  end

  return my_proc
end

closure1 = test_method2
closure1.call

def test_method3
  a1 = (33..44).to_a
  my_lambda = lambda do
    a1.each { |n| print("#{n / 1} ") }
    puts("\n")
  end

  return my_lambda
end

lambda1 = test_method3
lambda1.call

# Last test:
puts('Last test:')

my_lambda3 = ->(p) { p.class }

def test_method4(p)
  framework = 'Rails'
  p.call(framework)
end

my_lambda4 = test_method4(my_lambda3)
puts(my_lambda4)
puts('Finishing the program.')
