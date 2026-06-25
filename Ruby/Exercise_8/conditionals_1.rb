# frozen_string_literal: true

# The purpose of this file is to practice conditionals: if/then/else

# Multiline conditional sentences

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
# if day_weather == 'Sunny' : puts('Use some sun cream.') # Only works in Ruby 1.8
