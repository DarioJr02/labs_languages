# frozen_string_literal: true

# The goal of this file is to loearn and practice about ->
# - Exceptions.

# Here's a good point to learn how to debug code.

def divide(op1, op2)
  begin
    return (op1 / op2)
  rescue ZeroDivisionError
    print('División por 0 no posible.')
    return nil
  end
end

result = divide(9, 2)
puts(result)

result2 = divide(9, 0)
puts(result2)
