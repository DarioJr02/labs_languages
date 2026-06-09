# frozen_string_literal: true

# This file is to practice how class Tree works in Ruby.

class One
end

class Two < One
end

class Three < Two
end

class Four < Three
  def a_method
    return "Do something."
  end
end

class Five < Four
end

ob = Four.new
# puts(ob.a_method)

ob2 = Four.new

def ob2.a_method
  return "Doing another something."
end

# puts(ob2.a_method)

ob3 = Five.new
# puts(ob3.a_method)

def ob3.a_method
  return "Doing another another something"
end

# puts(ob3.a_method)
