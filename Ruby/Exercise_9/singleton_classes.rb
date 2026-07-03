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
puts("Profession class instanced object:")
baseball_player = Profession.new('baseball_player', 'at bat every day.')
puts(baseball_player.do_something)

# 3. baseball_player singleton method.
def baseball_player.play_another_position
  print("I don't batting anymore, now i'm a pitcher.")
end

puts(baseball_player.play_another_position)
puts("Does Profession Class have any singleton method? ==> #{Profession.singleton_methods.any?}")
puts("Is Profession.singleton_methods Array empty? ==> #{Profession.singleton_methods.empty?}")

# 3. Opening baseball_player eigen/singleton class.

