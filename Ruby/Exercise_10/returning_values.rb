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
      return ((arg**2 * -1)).abs
    end
  end
end

puts('1. Returning values:')
ob = Item.new('arrow', 'bottle')

puts("The return type of r1 method is: NilClass? ==> #{Item.r1.nil?}")
puts("The return type of r2 is ==> #{Item.r2(3)}")
