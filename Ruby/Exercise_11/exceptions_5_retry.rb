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

# w = Wallet.new(-1)
# puts(w.balance)

# Wallet2 class:
class Wallet2
  attr_accessor(:balance)

  # 1. Constructor:
  def initialize(balance)
    raise CustomExceptions::NegativeBalance, 'Balance cannot be negative.' if balance.negative?

    @balance = balance

    attempt = 0
    while attempt < 3
      attempt += 1

      begin
        break
      rescue StandardError => e
        puts("#{e.message}
        #{e.class}
        #{e.backtrace}")

        raise if attempt < 3
      end
    end
  end
end

w2 = Wallet2.new(-1)
puts(w2.balance)