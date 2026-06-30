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
    return "This is an id shared by all the instances of the clases ok?" # Return is optional, but recommended.
  end

  # class methods.
  # Use self.method instead MyClass.method for class methods.
  # def Thing.c_method is syntactically correct but unrecommended by style guides.
  def self.c_method1
    puts('This is a class method.')
  end
end

# Calling method class.
obj1 = Thing.new
obj1.i_method('This my instance method.')

obj2 = Thing.new
puts(Thing.c_method)
