# frozen_string_literal: true

# At this file we'll learn about capture multiple exceptions.

module CustomExceptions
  class InvalidName < StandardError
  end
end

def nickname(nickname)
  raise CustomExceptions::InvalidName, 'Invalid Name.' if nickname.strip.empty? ||
                                                          nickname == 'nickname' ||
                                                          nickname.is_a?(Numeric)

  return nickname
rescue CustomExceptions::InvalidName => e
  puts("#{e.message}
  #{e.class}
  #{e.backtrace}")
end

user = nickname('3.2')
puts(user)

def pow(arg)
  raise TypeError, 'No strings allowed.' if arg.is_a?(String)
  raise ArgumentError, "arg can't be zero." if arg.zero?

  return (arg**2)
rescue TypeError => e
  puts("#{e.message}
#{e.class}
#{e.backtrace}")
rescue StandardError => e
puts("#{e.message}
#{e.class}
#{e.backtrace}")
end

n = pow('a')
puts(n)
