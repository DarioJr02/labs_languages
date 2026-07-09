# frozen_string_literal: true

# The goal of this file is to practice ->
# - Default and multiple arguments.

# 1. Methods to practice default arguments.
def data(name = 'Uknown', id = 0)
  return {'name' => name, 'ID' => id }
end

h1 = data
puts("h1 key and value ==> #{h1}")

h2 = data('Matt', 3)
puts("h2 key and value ==> #{h2}")

# h3 = data('Karl', 8, 'value') # ==> Error, expected 2 args, 3 provided.
# puts("h3 key and value ==> #{h3}")

# 2. Class to pratice default arguments.
class Phone
end
