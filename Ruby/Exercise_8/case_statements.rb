# frozen_string_literal: true

# The goal of this file is to practice case statements.

# 1. Case Statements
puts("Case Statements:\n")

puts("\nGive me a day of the week with a number (1-7):")
a_day = gets.chomp.to_i

# Example 1.
def print_day(day)
  # This method is to execute a case block.

  case day # Parentheses around variable is optional.
  when 1 then puts("It's Monday.")
  when 2 then puts("It's Tuesday.")
  when 3 then puts("It's Wednesday.")
  when 4 then puts("It's Thursday.")
  when 5 then puts("It's Friday.")
  when 6, 7 then puts("It's Weekend.")

  else puts("It's not a real day.\n")
  end
end

# Example 2.
def print_day2(day)
  case day
  when 1..3 then puts('Go home early.')
                 puts("It's Monday") if day == 1
                 puts("It's Tuesday") if day == 2
                 puts("It's Wednesday.") if day == 3

  when 4 then puts("It's Thursday.")
  when 5 then puts("It's Friday.\nNearly Weekend.")

  when 6, 7 then puts("It's weekend.")
                 puts('Saturday.') if day == 6
                 puts('Sunday.') if day == 7

  else puts("It's not a real day.\n")
  end
end

# Example 3.
def print_day3(day)
  case day
  when 1..3 then puts('Go home early.')
                 puts("It's Monday.") if day == 1
                 puts("It's Tuesday.") if day == 2
                 puts("It's Wednesday.") if day == 3

  when 4 then puts("It's Thursday.")
  when 5 then puts("It's Friday.\nNearly Weekend.")
  when 6, 7 then puts("It's weekend.")
                 puts('Saturday.') if day == 6
                 puts('Sunday.') if day == 7

  else puts("It's not a real day.\n")
  end
end

print_day(a_day)
print_day2(a_day)
print_day3(a_day)

# case as a expression.
puts("\nCase as a expression.")

language_to_learn = 'Rust'

advice = case language_to_learn
         when 'C++', 'Rust' then "#{language_to_learn} learning curve IS NOT beginner friendly."
         when 'Python', 'Go' then "#{language_to_learn} learning curve IS beginner friendly."
         else
           'Invalid language.'
         end

puts(advice)
