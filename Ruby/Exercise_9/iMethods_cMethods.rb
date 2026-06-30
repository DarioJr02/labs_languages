# frozen_string_literal: true

# The goal of this file is to practice instance methods and class methods.

require 'set'

# This class will have 2 instance and class methods.
class Thing
  # Instance methods:
  def i_method(msg)
    puts('This is a instance method.')
  end

  # Use +3 length characters for method arguments.
  def i_method2(val1, val2)
    return (val1**val2) # Return is optional, but recommended.
  end

  # class methods.
  # Use self.method instead MyClass.method for class methods.
  # def Thing.c_method is syntactically correct but unrecommended by style guides.
  def self.c_method
    puts('This is a class method.')
  end
end
