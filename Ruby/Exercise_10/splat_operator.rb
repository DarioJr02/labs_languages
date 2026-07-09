# frozen_string_literal: true

# The goal of this file is to practice ->
# - Splat operator (*arg)
# - Argument priority in method sign.

# 1. splat opeartor (*arg)

def splat_op(one, two, three, *four)
  return [one, two, three, four]
end

ob1 = splat_op(1, 2, 3, '4', 'four', 4.to_f)
puts("ob1 content ==> #{ob1}")

# - Another method sign.
