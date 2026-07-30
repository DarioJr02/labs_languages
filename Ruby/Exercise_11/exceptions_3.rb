# frozen_string_literal: true

# At this file we'll learn about raise method in exceptions.

module Exceptions # rubocop:disable Style/Documentation
  # Exceptions with rescue
  def self.calc(val1, val2)
    raise 'Division by 0 not in my code baby.' if val2.zero?

    return (val1 / val2)
  end

  def self.arg_check(msg)
    raise 'msg cannot be a number or be empty.' if msg.is_a?(Numeric)
    raise 'msg cannot be empty' if msg.empty?

    return msg
  end

  def self.ng_num_check(num)
    raise if num.negative?
  rescue StandardError => e
    puts("#{e.message}
#{e.class}
#{e.backtrace}")
  ensure
    puts('This line must be executed.')
  end

  def self.unh_exception(val)
    raise
  end
end

# 1. raise:
puts('1. raise:')

x = Exceptions.calc(29, 3)
puts(x)

y = Exceptions.arg_check('a')
puts(y)

z = Exceptions.ng_num_check(-4)

x1 = Exceptions.unh_exception(3)