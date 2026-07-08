# frozen_string_literal: true

# The goal of this file is to learn how access specifiers work.

# 1. Profession Class.
class Profession
  def initialize(profession, common_task, age)
    @profession = { profession => common_task }
    @age = age
  end

  # do_task
  def do_task
    print("My most common task as a #{@profession.keys} is #{@profession.values}")
  end

  def rest(hours)
    print(sleep(hours))
  end

  # private mehtods
  # ----------------------------------------------------------------
  private

  def sleep(hours)
    return "I need to rest #{hours} hours to do my work tomorrow."
  end

  def secret
    return "This is a secret."
  end
  # ----------------------------------------------------------------

  # protected methods ==> To compare values that are siblings (instances of the same class).
  public

  def compare_ages(other)
    if age > other.age
      puts("#{@profession.keys} is older.")
    else
      puts("#{other.profession} is older.")
    end
  end

  protected

  def age
    return @age
  end

  def profession
    return @profession.keys
  end
end

# ----------------------------------------------------------------
# 3. Instance class objects.
football_player = Profession.new('Football player', 'running.', 35)

boxer = Profession.new('Boxer', 'running.', 36)

football_player.compare_ages(boxer)

# Calling .send() method.
puts("Calling .send() method:
#{boxer.send(:secret)}
#{football_player.send(:secret)}")

# Definying another class.
class Other
  def initialize(something)
    @something = something
  end

  private

  def secret(s)
    return "I can't eat #{s}."
  end

  protected

  def protecting(what_are_you_protecting)
    return "I'm protecting my #{what_are_you_protecting}."
  end

  # class methods (another syntax).
  class << self
    def method_a(arg)
      return arg
    end

    private

    def method_b(arg)
      return arg
    end
  end
end

# .send executes private and protected methods.
o = Other.new('Something')
puts(o.send(:secret, 'Seafood'))
puts(o.send(:protecting, 'privacy'))

puts("\nCalling singleton methods with another syntax: #{Other.method_a(:Hey)}")
# puts(Other.method_b(321)) # => This will result in (NoMethodError)
# puts("\nCalling private singleton methods using .send(): #{Other.send(:method_a)}") # => This don't work.
