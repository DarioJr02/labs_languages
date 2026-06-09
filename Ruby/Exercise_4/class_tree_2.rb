# frozen_string_literal: true

# This file is to practice how works a class tree and sub-typed polymorphism.

class One
end

class Two < One
end

class Three < Two
end

class Four < Three
end

class Five < Four
end

# Constants inside classes
class Six < Five
  A = 99.to_f
end

class Seven < Six
end

ob = Five.new # => class Five instance

ob_t = ob.class # => It's value is literally Five.
puts(%(ob_t type is: #{ob_t.class}\n\n))
puts(%(ob_t is a class?: #{ob_t.is_a?(Class)}\n\n))
# puts(ob_t.superclass.superclass.superclass.superclass.superclass.superclass) # => Manual climb (NOT RECOMMENDED).

begin
  ob_t = ob_t.superclass
  puts(ob_t.inspect)
end until ob_t == nil
puts("\n")

ob_s = Six.new
# ob_sv = Six::Seven.new # => Qué sucede aquí? Qué pasaría si Seven heredara de Six?

puts("Constant inside class Six: #{Six::A}")
puts("Constant inside class Seven due to sub-typed polymorphism: #{Seven::A}")

ob_two = Two.new
ob_two_lit_class = ob_two.class
puts(%(ob_two_lit_class type is: #{ob_two_lit_class.class}\n\n))
puts(%(ob_two_lit_class is a class?: #{ob_two_lit_class.is_a?(Class)}))

begin
  ob_two_lit_class = ob_two_lit_class.superclass
  puts(ob_two_lit_class.inspect)
end until ob_two_lit_class == nil
puts(%(\n))
