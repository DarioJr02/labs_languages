# frozen_string_literal:true

# At this file we'll learn about ==> 
# Precedence

# 1: Precedence

def method1(p1, &block)
  block.call if block_given?
end

def method2(&block)
  block.call if block_given?
end

method1(method2) do
  puts('Hey')
end

def method3(&block)
  block.call if block_given?
end

method2 { method3 { puts('Ruby') } }
