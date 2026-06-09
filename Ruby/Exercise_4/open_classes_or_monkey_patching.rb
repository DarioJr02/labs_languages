# frozen_string_literal: true

# This file is to practice partial classes concept in Ruby.

class X
  def x
    return "x"
  end
end

class Y < X
  def xy
    return "xy"
  end 
end

class X
  def x2
    return "x2"
  end
end

class Y < X
  def xy2
    return "xy2"
  end
end

ob = Y.new
puts(ob.x)
puts(ob.x2)
puts(ob.xy)
puts(ob.xy2)
