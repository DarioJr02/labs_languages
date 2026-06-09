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

ob = Five.new

# Aquí como es que sólo ob_t puede acceder a la super class de ob? Es por su tipo? Por qué no se puede desde ob?
ob_t = ob.class # => De qué tipo es ob_t? Cómo se puede comprobar el tipo de un objeto?

puts(ob_t.superclass.superclass.superclass.superclass.superclass.superclass)

begin
  ob_t = ob_t.superclass
  puts(ob_t.inspect)
end until ob_t == nil
