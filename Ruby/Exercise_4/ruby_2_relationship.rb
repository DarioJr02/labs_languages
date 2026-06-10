# frozen_string_literal: true

# This file is to practice these two core concepts in Ruby:
# - Instance
# - Inheritance

class One
end

class Two < One
end

# ob_o and ob_t => class type object.
ob_o = One.new.class
ob_t = Two.new.class

# Inheritance
ob_t1 = Two.new
ob_t2 = Two.new

def climb(obj)
  begin
    obj = obj.superclass
    puts(obj.inspect)
  end until obj == nil
  puts(%(\n))
end

climb(ob_o)
climb(ob_t)
