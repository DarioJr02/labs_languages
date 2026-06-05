# frozen_string_literal: true

# Ruby data types.

# Global variables.

love = "Amor"
puts love

puts `ls -l ~/Documents/`

# Classes
class Human
  # Variables de clase
  @@id = 0

  def initialize
    @name = 'Miguel'
    @edad = 30
    @height = 1.70
    @weight = 70

    # Class variables init
    @@id = @@id + 1
  end

  def show_age
    puts @edad
  end

  def show_name
    puts @name
  end

  def show_height
    puts @height
  end

  def show_weight
    puts @weight
  end

  def self.show_id
    @@id
  end
end

puts("\n")

miguel = Human.new
print(miguel.show_name)
print(miguel.show_age)
puts(Human.show_id)

andrea = Human.new

puts(Human.show_id)
