# frozen_string_literal: true

require_relative 'new_method'

# The goal of this file is to practice singleton methods and view the hierarchy class in Ruby.

# 1. Viewwing hierarchy clsas in Ruby.
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

# Print singleton methods.

print_singleton_methods('IO', IO)
print_singleton_methods('Class', Class)
print_singleton_methods('String', String)
print_singleton_methods('TrueClass', TrueClass)
print_singleton_methods('AThing', AThing)

# Print singleton class.
def print_singleton_class(obj)
  puts("#{obj.singleton_class}")
end

print_singleton_class("#{AThing}")

puts("\nRecurse class hierarchy:")

def show_family_class(a_class)
  unless (a_class.nil?)
    puts("#{a_class} about to recurse with a_class.superclass = #{a_class.superclass.inspect}")
    show_family_class(a_class.superclass)
  end
end

show_family_class(AThing)
print("\n")
show_family_class(Class)
print("\n")
show_family_class(NilClass)

# 2. Singleton methods.
class Profession
  # 1.
  def initialize(profession, commonly_task)
    @profession = { profession => commonly_task }
  end

  # 2.
  def do_something
    puts("Profession=#{@profession.keys}, task=#{@profession.values}")
  end
end

# 3. Creating Profession objects.
puts("\nCreating and printing singleton methods:")

photographer = Profession.new('Photographer', 'take a picture.')
puts(photographer.do_something)

video_editor = Profession.new('Video editor', 'cut a clip.')
puts(video_editor.do_something)

# Singleton method to photographer.
def photographer.learn_more
  puts("I'm a photographer, but i like to learn some video editing skills like cut clips.}")
end

puts(photographer.learn_more)

# puts(video_editor.learn_more) # => undefined method.

# 4. Checking if a singleton method exist using .include?() => .include?() .singleton_methods returns an Array of symbols.
puts('The photographer is learning more.') if photographer.singleton_methods.include?(:learn_more)

# Checking if a method exist using in an object .respond_to?() ...
# => if 1arg == String, it'll be converted to a symbol, 2nd_arg to avoid inherited methods.
puts('The photographer is learning more.') if photographer.respond_to?(:learn_more, false)

# Checking if a method exist in a Class object.
Profession.method_defined?(:do_something) ? puts('yes') : puts('no')
File.method_defined?(:do_something) ? puts('yes') : puts('no')
Class.method_defined?(:to_s) ? puts('yes') : puts('no')
