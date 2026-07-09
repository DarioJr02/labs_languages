# frozen_string_literal: true

# The goal of this file is understand and practice ->
# - Pass-by-value-of-reference.

def pass(name)
  name = 'Jessica'

  puts("At this method i'm #{name.equal?('Mark') ? 'Mark' : 'Jessica'}.")
end

n = 'Mark'
puts("My name is #{n}.")

pass(n)

puts("My name is Mark? ==> #{n.equal?('Mark')}")
