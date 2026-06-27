# frozen_string_literal: true

# The purpose of this file is to practice conditionals: if/then/else

# 1. Multiline conditional sentences

day_weather = 'Raining'

if (day_weather == 'raining'.capitalize)
  puts('Use an umbrella.')

else
  puts("it's not raining.")
end

# Single line conditional sentences
day_weather = 'sunny'.capitalize

puts('Use some sun cream.') if day_weather == 'Sunny'
if day_weather == 'Sunny' then puts('Use some sun cream.') end
# if day_weather == 'Sunny' : puts('Use some sun cream.') # Works in Ruby 1.8 only.

# 2. Operators and precedence.

# - Logical Operators => and/or/not, &&/||/!

a_day = 'Saturday'
working_overtime = true



puts('Hurrah!') if a_day == 'Saturday' or a_day == 'Sunday' and not working_overtime # it will never be executed.
puts('Hurrah!') if a_day == 'Saturday' or (a_day == 'Sunday' and not working_overtime)

puts('Hurrah! (Using &&/||/!).') if a_day == 'Saturday' || a_day = 'Saturday' && !working_overtime
