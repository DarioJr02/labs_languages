# frozen_string_literal: true

# The goal with this file is to practice class and instance variables.

# Class to use class and instance vars.
class Thing
  @inst_var = 0
  @@class_var = 1

  def show_vars
    return "@inst_var value: #{@inst_var} | @@class_var value: #{@@class_var}"
  end
end

obj = Thing.new
puts(obj.show_vars)
