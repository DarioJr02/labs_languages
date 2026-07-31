# frozen_string_literal: true

# Ath this file we'll learn about retry mechanism in Ruby.

# Custom Exceptions module:
module CustomExceptions
  class NegativeBalance < StandardError
  end

  class InsufficientBalance < StandardError
  end
end

# Wallet class ==> Old way to do retry in exceptions.
class Wallet
  # 0. Accesors:
  attr_accessor(:balance)

  def initialize(balance)
    raise CustomExceptions::NegativeBalance, 'Balance cannot be negative.' if balance.negative?

    @balance = balance
  rescue StandardError => e
    attempt = 0
    attempt += 1
    retry if attempt < 3
    puts("#{e.message}
#{e.class}
#{e.backtrace}")
  end
end

w = Wallet.new(-1)
puts(w.balance)
