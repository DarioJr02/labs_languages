# frozen_string_literal: true

# At this file we'll learn about how to apply retry mechanism without its keyword.

# Custom Exceptions module:
module CustomExceptions
  class ConnectionError < StandardError
  end

  class InvalidFileName < StandardError
  end
end

# Database class example:
class Database
  def initialize(file_name)
    raise CustomExceptions::InvalidFileName, 'Invalid File Name.' if file_name.strip.empty?

    @file_name = file_name
  end

  def connect
    attempts = 0
    raise CustomExceptions::ConnectionError, 'Connection failed!' if attempts < 3

    puts('Connection Success!')
  end
end

db = Database.new('db')