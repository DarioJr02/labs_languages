# frozen_string_literal: true

# The goal of this file is to loearn and practice about ->
# - Exceptions.

# Here's a good point to learn how to debug code.

def method_unhandled(x)
  return (x/0)
end

x = method_unhandled(2)
