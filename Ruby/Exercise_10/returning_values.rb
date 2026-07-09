# frozen_string_literal: true

# The goal of this file is to learn and practice about:
# - Returning values, multiple returning values.
# - Method args.

# This class is to practice the returning value concept.
class Item
  # Singleton methods
  class << self
    # 1. Returns: nil.
    def r1() end

    # 2. Implicit return.
    def r2(arg)
      (arg**2 * -1).abs
    end

    # 3. Explicit return, ends the method inmediately.
    def r3(arg)
      return (arg**3 * -1).to_f
      # return (arg + 3) / (3 * 1) # => This will never be executed.
    end

    # 4. Implicit return of multiple values.
    def r4_mult_values(arg1, arg2, arg3)
      # arg1, arg2, arg3 # => Error.

      # return arg1, arg2, arg3 # => Ok, but not recommended by guide style.

      [arg1 * 1, arg2 * 2, arg3 * 3] # => Explicit Array, OK.

      # return [arg1, arg2, arg3] # => OK.
    end

    def ret_hash(arg1, arg2)
      { arg1 => arg2 }
      # return { arg1 => arg2 } # => OK.
    end
  end
end

puts('1. Returning values:')

puts("Return type of r1 method is: NilClass? ==> #{Item.r1.nil?}")
puts("Return value of r2 ==> #{Item.r2(3)} and its type ==> #{Item.r2(3).class}")
puts("Return value of r2 ==> #{Item.r2(3.59)} and its type ==> #{Item.r2(3.59).class}")

puts("Return value of r3 ==> #{Item.r3(9.3)} and its type ==> #{Item.r3(9.3).class}")
puts("Return value of r4 ==> #{Item.r4_mult_values(8, 9, 10)} and its type ==> #{Item.r4_mult_values(8, 9, 10).class}")
puts("Return value of ret_hash ==> #{Item.ret_hash('Name', 'Miguel')} and its type ==> #{Item.ret_hash(:id, 8).class}")

arr = Item.r4_mult_values((1..3).to_a, (4..6).to_a, (7..9).to_a)
puts("My array content ==> #{arr}
My array flatted! ==> #{arr.flatten!}")
