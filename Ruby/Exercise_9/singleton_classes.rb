# frozen_string_literal: true

# The goal of this file is to learn how Singleton classes work.

# 1. Class to open singleton class of each object.
class Profession
  def initialize(profession, commonly_task)
    @professional = { profession => commonly_task }
  end

  def do_something
    print("I'm a #{@professional.keys} and i usually do #{@professional.values}.")
  end
end

# 2. Profession class instanced objects.
puts("1. Profession class instanced object:")
baseball_player = Profession.new('baseball_player', 'at bat every day.')
puts(baseball_player.do_something)

# 3. baseball_player singleton method.
def baseball_player.play_another_position
  print("I don't batting anymore, now i'm a pitcher.")
end

puts(baseball_player.play_another_position)
puts("Does Profession Class have any singleton method? ==> #{Profession.singleton_methods.any?}")
puts("Is Profession.singleton_methods Array empty? ==> #{Profession.singleton_methods.empty?}")

# -------------------------------------------------
# 3. Opening baseball_player eigen/singleton class.
puts("\n2. Opening baseball_player singleton class:")

class << baseball_player
  def studying_to_be_a_manager
    puts("I'm studying to be a baseball manager.")
  end
end
# -------------------------------------------------

# -------------------------------------------------------------------
if baseball_player.singleton_methods.include?(:studying_to_be_a_manager)
  baseball_player.studying_to_be_a_manager
else
  puts("I'm not studying for now.")
end

if baseball_player.respond_to?(:studying_to_be_a_manager)
  baseball_player.studying_to_be_a_manager
else
  puts("I'm not studying for now.")
end

if baseball_player.class.method_defined?('studying_to_be_a_manager')
  baseball_player.studying_to_be_a_manager
else
  puts("Method not defined for #{baseball_player.class}.")
end
# -------------------------------------------------------------------

puts("\n3. Define a singleton method using ==> .define_singleton_method:")
# Another way to do it, used in metaprogramming.
baseball_player.define_singleton_method(:doing_stuff) do
  print("I'm doing some stuff.")
end

puts("is doing_stuff method defined in baseball_player? ==> #{baseball_player.respond_to?(:doing_stuff)}")
puts(baseball_player.doing_stuff)