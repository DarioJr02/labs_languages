# frozen_string_literal: true

# This file is to practice how class Tree works in Ruby.

class One
end

class Two < One
end

class Three < Two
end

class Four < Three
end

class Five < Four
end

ob = Five.new
tree = ob.class

puts(ob.methods)
