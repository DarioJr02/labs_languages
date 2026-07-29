# frozen_string_literal: true

# At this file we'll learn about ->
# Exceptions.
# rescue => e.class/message/backtrace.

module Exceptions # rubocop:disable Style/Documentation
  # 1. e.message:
  begin
  rescue StandardError => e
    puts(e.message)
  end

  # 2. Exception with e.message.
  def self.calc(val1, val2)
    return (val1 / val2)
  rescue StandardError => e
    puts(e.message)
  end
end

puts('1. e.message:')
x = Exceptions.calc(3, 5)
puts(x)

y = Exceptions.calc(91, 2)
puts(y)

puts('2. Exception with e.backtrace.')