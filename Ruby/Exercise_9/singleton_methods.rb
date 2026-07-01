# frozen_string_literal: true

require_relative 'new_method'

# The goal of this file is to practice singleton methods.

puts("1. Singleton methods:\n")

puts("AThing.class => #{AThing.class}",
     "String.class => #{String.class}",
     "Integer.class => #{Integer.class}",
     "Float.class => #{Float.class}",
     "True.class => #{TrueClass.class}",
     "False.class => #{FalseClass.class}",
     "Array.class => #{Array.class}",
     "Range.class => #{Range.class}",
     "Hash.class => #{Hash.class}",
     "Class.class => #{Class.class}\n\n")

# Print Singleton Methods.
def print_singleton_methods(class_name, class_object)
  puts("#{class_name} Singleton Methods => #{class_object.singleton_methods}")
end

print_singleton_methods('IO', IO)
print_singleton_methods('Class', Class)
print_singleton_methods('String', String)
print_singleton_methods('TrueClass', TrueClass)
