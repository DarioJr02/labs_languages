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
    "I need to rest #{hours} hours to do my work tomorrow."
  end

  def secret
    'This is a secret.'
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

  attr_reader :age

  def profession
    @profession.keys
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
    "I can't eat #{s}."
  end

  protected

  def protecting(what_are_you_protecting)
    "I'm protecting my #{what_are_you_protecting}."
  end

  # class methods (another syntax).

  class << Other
    def method_a(arg)
      arg
    end

    private

    def method_b(arg)
      arg
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

# Nested Methods
puts("\nCalling nested methods:")
class T_Methods
  def x
    puts('x')
    def y
      puts('y')
    end

    def z
      puts('z')
    end
  end
end

o1 = T_Methods.new
puts(o1.x)
