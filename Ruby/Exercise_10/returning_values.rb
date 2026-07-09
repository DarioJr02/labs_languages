# frozen_string_literal: true

# The goal of this file is to learn and practice about:
# - Returning values, multiple returning values.
# - Method args.

# This class is to practice the returning value concept.
class Item
  def initialize(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
  end

  # Singleton methods
  class << self
    # 1. Returns: nil.
    def r1() end

    # 2. Returns: int or float
    def r2(arg)
      (arg**2 * -1).abs # Return implicitly.
    end

    # 3. Returns: Explicitly return statement finishes the method inmediately.
    def r3(arg)
      return (arg**3 * -1).to_f
    end
  end
end

puts('1. Returning values:')
ob = Item.new('arrow', 'bottle')

puts("The return type of r1 method is: NilClass? ==> #{Item.r1.nil?}")
puts("The return type of r2 is ==> #{Item.r2(3)} and its type ==> #{Item.r2(3).class}")

# Por qué aquí si pongo 3.59 me devuleve int?
puts("The return type of r2 is ==> #{Item.r2(3.59)} and its type ==> #{Item.r2(3.59).class}")
puts("The return type of r3 is ==> #{Item.r3(9.3)} and its type ==> #{Item.r3(3.59).class}")
