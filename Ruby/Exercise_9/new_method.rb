# frozen_string_literal: true

# This file is to learn new method behaviour in deep.

# Class to learn new method behaviour.
class AThing
  @inst_class_var = 0
  @@c_var = 1

  def initialize(inst_var)
    @inst_var = inst_var
  end

  # instance methods.
  def i_method
    "This is an instance method: @inst_class_var: #{@inst_class_var} |  @@c_var: #{@@c_var} | @inst_var: #{@inst_var}"
  end
end

obj = AThing.new(9.5)
puts(obj.i_method)