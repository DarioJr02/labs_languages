# frozen_string_literal: true

# At this file we'll learn about raise exceptions and custom exceptions with inheritance.

class InsufficientBalance < StandardError
end

class InvalidUserName < StandardError
end

# Customer class
class Customer
  # 0. accessors:
  attr_accessor(:_user_name, :_balance)

  # 1. Constructor:
  def initialize(user_name, balance)
    raise InvalidUserName, 'Invalid user name.' if user_name.strip.empty?
    raise InsufficientBalance, 'Balance cannot be negative.' if balance.negative?

    @_user_name = user_name
    @_balance = balance
  end
end

# Custom Exceptions
module CustomExceptions
  def self.item_payment(customer)
    price = 300
    raise InsufficientBalance, 'Customer Balance Insufficient.' if customer._balance < price

    customer._balance -= price
  rescue ArgumentError => e
    puts("#{e.message}
    #{e.class}
    #{e.backtrace}")

  end
end

c1 = Customer.new('D', -1)
puts("Customer's user name: #{c1._user_name} | Balance #{c1._balance}")

# CustomExceptions.item_payment(c1)
puts(c1._balance)