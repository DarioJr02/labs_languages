# frozen_string_literal: true

# The goal with this file is to practice class and instance variables.

# Class to use class and instance vars.
class Thing
  @inst_var = 0 # Instance class var.
  @@class_var = 1 # ClassVar.

  def initialize(inst_var1)
    @inst_var1 = inst_var1 # Instance var.
  end

  def i_show_vars
    "@inst_var value: #{@inst_var} | @@class_var value: #{@@class_var}"
  end

  def self.c_show_vars
    "@inst_var value: #{@inst_var} | @@class_var value: #{@@class_var}"
  end
end

obj = Thing.new(3)
puts(obj.i_show_vars)
puts(Thing.c_show_vars)
