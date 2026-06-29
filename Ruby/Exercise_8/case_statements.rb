# frozen_string_literal: true

# The goal of this file is to practice case statements.

# 1. Case Statements
puts("Case Statements:\n")

puts("\nGive me a day of the week with a number (1-7):")
a_day = gets.chomp.to_i

def print_day(day)
  # This method is to execute a case block.

  case day # Parentheses around variable is optional.
  when 1 then puts("It's Monday.")
  when 2 then puts("It's Tuesday.")
  when 3 then puts("It's Wednesday.")
  when 4 then puts("It's Thursday.")
  when 5 then puts("It's Friday.")
  when 6, 7 then puts("It's Weekend.")
  else puts("That's not a real day.")
  end
end

def print_day2(day)
  case day
  when 1 then puts("It's Monday.")
  when 2 then puts("It's Tuesday.")
  when 3 then puts("It's Wednesday.")
              # puts('Go home early.') if day == 1 || day == 2 || day == 3
              # puts('Go home early.') if [1, 2, 3].to_a.include?(day)
              puts('Go home early.') if (1..3).to_a.include?(day)
  when 4 then puts("It's Thursday.")
  end
end

print_day2(a_day)
