# frozen_string_literal: true

# The goal of this file is to practice ->
# - Default and multiple arguments.

# 1. Methods to practice default arguments.
def data(name = 'Uknown', id = 0)
  return {'name' => name, 'ID' => id }
end

h1 = data
puts("h1 key and value ==> #{h1}")

h2 = data('Matt', 3)
puts("h2 key and value ==> #{h2}")

# h3 = data('Karl', 8, 'value') # ==> Error, expected 2 args, 3 provided.
# puts("h3 key and value ==> #{h3}")

# 2. Class to pratice default arguments.
class Game
  def initialize(year, title = 'Uknown', studio = 'Uknown')
    @year = year
    @title = title.capitalize
    @studio = studio
  end

  def print_game
    return "game is ==> #{@title}, made in #{@studio} and released in #{@year}"
  end
end

g1 = Game.new(2023)
puts("My favorite ==> #{g1.print_game}\n\n")

g2 = Game.new(2023, 'street fighter 6', 'Capcom')
puts("My neighbor's favorite ==> #{g2.print_game}")
