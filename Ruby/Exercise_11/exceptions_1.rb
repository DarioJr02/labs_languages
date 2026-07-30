# frozen_string_literal: true

# The goal of this file is to loearn and practice about ->
# - Exceptions.

# Here's a good point to learn how to debug code.

def divide(op1, op2)
  begin
    return (op1/op2)
  rescue ZeroDivisionError
    print('Dividing by 0 not allowed.')
    return nil
  end
end

def divide2(op1, op2)
  return (op1 / op2)
rescue ZeroDivisionError
  print('Dividing by 0? Not in my code.')
  return nil
end

puts(divide2(11, 2))
puts(divide2(2, 0))
