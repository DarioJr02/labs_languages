# frozen_string_literal:true

# At this file we'll learn about ==>
# iterators.

def my_iterator
  yield 10
  yield 20
  yield 30
  (5..10).each do |n|
    yield n
  end
end

my_iterator do |n|
  print(n * n)
  puts("\n")
end

msg = 'Ruby on Rails'.split('')
puts(msg.class)

def my_iterator2(p)
  p.each { |c| yield c } if block_given?
end

my_iterator2(msg) do |c|
  print("#{c.upcase} ")
end
