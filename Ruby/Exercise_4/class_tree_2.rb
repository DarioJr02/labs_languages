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

ob = Five.new

class Seven < Six
end

# Aquí como es que sólo ob_t puede acceder a la super class de ob? Es por su tipo? Por qué no se puede desde ob?
ob_t = ob.class # => De qué tipo es ob_t? Cómo se puede comprobar el tipo de un objeto?

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
