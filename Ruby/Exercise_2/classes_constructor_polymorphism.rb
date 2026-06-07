# frozen_string_literal: true

# This class is to practice concepts: instance variables, macros, constructor, and polymorphism.
class Thing
  # Macros
  attr_accessor :name, :brand, :year_made, :model

  # Constructor definition
  def initialize(name, brand, year_made, model = nil)
    # Instance variables
    @name = name
    @brand = brand
    @year = year_made
    @model = model
  end

  # Overriding to_s method

end

# Using and overriding to_s
t_1 = Thing.new('Pixel', 'Google', 2022, 7)
# puts(t_1.to_s)
# p('Dario', 23, 300, (9 * 9).inspect)
