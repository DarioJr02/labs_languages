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
  # Give me two values.
  def self.calc(val1, val2)
    return (val1 / val2)
  rescue StandardError => e
    puts("Exception Message: [#{e.message}]
Exception Type: [#{e.class}]
Exception Backtrace: [#{e.backtrace}]")
  end
end

puts('1. e methods:')
x = Exceptions.calc(3, 5)
puts(x)

y = Exceptions.calc(91, 2)
puts(y)

z = Exceptions.calc('0', 'a')
puts(z)
