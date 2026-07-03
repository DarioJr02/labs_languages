# frozen_string_literal: true

# The goal of this file is to learn how access specifiers work.

# 1. Profession Class.
class Profession
  public # => is initialize public by default?
  def initialize(profession, common_task)
    @profession = { profession => common_task }
  end

  # do_task
  def do_task
    print("My most common task as a #{@profession.keys} is #{@profession.values}")
  end

  def rest(hours)
    print(sleep(hours))
  end

  # private mehtods
  private

  def sleep(hours)
    return "I need to rest #{hours} hours to do my work tomorrow."
  end
end

football_player = Profession.new('Football player', 'running.')

puts(football_player.do_task)
puts(football_player.rest(3))
