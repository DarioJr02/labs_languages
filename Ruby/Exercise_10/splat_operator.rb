# frozen_string_literal: true

# The goal of this file is to practice ->
# - Splat operator (*arg)
# - Argument priority in method sign.

# 1. splat opeartor (*arg)

def splat_op1(one, two, three, *four)
  return [one, two, three, four]
end

ob1 = splat_op1(1, 2, 3, '4', 'four', 4.to_f)
puts("ob1 content ==> #{ob1}")


# - Right-left resolution.
def splat_op2(*one, two, three, four)
  return [one, two, three, four]
end

ob2 = splat_op2(1, 2, 3, 4, 5, 6, 7, 8)
puts("ob2 content ==> #{ob2}")

# ???
def splat_op3(one, two, *three, four)
  return [one, two, three, four]
end

ob3 = splat_op3(1, 2, 3, 4, 5, 6, 7)
puts("ob3 content ==> #{ob3}")
