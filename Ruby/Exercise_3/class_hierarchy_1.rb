# frozen_string_literal: true

# The purpose of this file is to practice the next concepts:
# Hierarchies
# Attributes
# Class variables

require_relative '../Exercise_2/classes_constructor_polymorphism'

# This class is for practice inheritance in Ruby.
class CPU < Thing
  # Macros
  attr_accessor :name, :brand, :year_made, :model, :description

  def initialize(name, brand, year_made, model, description)
    super(name, brand, year_made, model)

    @description = description
  end

  # Override to_s method
  def to_s
    msg = super + " | Description: #{description}"

    return msg
  end
end
