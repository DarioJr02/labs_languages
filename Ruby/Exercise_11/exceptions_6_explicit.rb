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
    return true if @file_name == 'db'

    raise CustomExceptions::ConnectionError, 'Connection Failed!'
  end
end

# db = Database.new('')
# db = Database.new('')
db = Database.new('db')

attempts = 0

while attempts < 3
  begin
    raise CustomExceptions::ConnectionError, 'Connection Failed!' unless db.connect

    # raise CustomExceptions::ConnectionError, 'Connection Failed!' unless db.connect == true

    puts('Connection Success!')
    break
    rescue CustomExceptions::ConnectionError => e
      puts("#{e.message}
      #{e.class}
      #{e.backtrace}")

      raise if attempts >= 3
  end
end
