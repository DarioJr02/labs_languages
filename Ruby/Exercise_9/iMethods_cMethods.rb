# frozen_string_literal: true

# The goal of this file is to practice:
# class methods and instance methods.
# some Ruby coding guide style advices.

require 'set'

# This class will have 2 instance and class methods.
class Thing
  # Instance methods:
  def i_method(msg)
    puts(msg.capitalize)
  end

  # Use +3 length characters for method arguments.
  def i_method1(x, y)
    return (x**y)
  end

  def self.c_method
    return "This a method class ok?" # Return is optional, but recommended.
  end

  # class methods.
  # Use self.method instead MyClass.method for class methods.
  # def Thing.c_method is syntactically correct but unrecommended by style guides.
  def self.c_method1
    puts('This is another methdo class ok?')
  end
end

# Calling instance methods.
puts('Calling instance methods:')
obj1 = Thing.new
obj1.i_method('This my instance method.')
puts(obj1.i_method1(9, 2))

obj2 = Thing.new
puts(Thing.c_method)
puts(obj2.i_method1(5, 2))

# Calling class methods => method class must be called using the class identifier: ClassName.Method.
puts("\nCalling class methods:")
puts(Thing.c_method)
puts(Thing.c_method1)
