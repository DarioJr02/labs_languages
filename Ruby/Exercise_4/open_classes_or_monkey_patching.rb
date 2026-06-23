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
puts("\n")

# Adding a method to a defined Ruby class.

class Array
  def proto
    return "Proto"
  end
end

arr = [9.to_f, 10.22.to_i, 11.to_s]
puts(arr)
puts(arr.proto)
