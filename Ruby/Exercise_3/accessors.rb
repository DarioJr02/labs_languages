# frozen_string_literal: true

require_relative './class_hierarchy_1'

# This file is to practice accessors that are define instance variables but not initialized.
class AnotherThing < CPU
  # Accsessors
  attr_accessor(:country, :color)

  # Constructor
  def initialize(name, brand, year_made, model, description, country = 'NOT DEFINED', color = 'NOT DEFINED')
    # Super Class constructor call.
    super(name, brand, year_made, model, description)

    # Instance variables.
    @country = country
    @color = color
  end

  # Overriding to_s method
  def to_s
    msg = super + "\nCountry: #{country} | Color: #{color}]"
    return msg
  end
end

a_thing = AnotherThing.new('Monitor', 'LG', 2020.to_s, '3D9D', 'High durability')

puts(a_thing) # => a_thing class to_s by default?
