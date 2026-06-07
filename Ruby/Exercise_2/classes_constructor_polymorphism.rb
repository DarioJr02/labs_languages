# frozen_string_literal: true

# This class is to practice concepts: instance variables, macros, constructor, and polymorphism.
class Thing
  # Macros
  attr_accessor :name, :brand, :year_made, :model

  # Constructor definition
  def initialize(name, brand, year_made, model = nil)
    # Instance variables
    @name = name.capitalize
    @brand = brand.capitalize
    @year = year_made
    @model = model.to_s.capitalize
  end

  # Overriding to_s method
  def to_s
    representation =
      "[Name: #{name} | Brand: #{brand}, | Year: #{year_made} | Model: #{model}]"

    return representation
  end
end

# Using and overriding to_s
t1 = Thing.new('pixel', 'Google', 2022, 7)
# puts(t_1.to_s)
# p('Dario', 23, 300, (9 * 9).inspect)

puts(t1.inspect)
puts(t1.to_s)

puts(0o744) # Octal representation
puts(t1.name.empty?)
