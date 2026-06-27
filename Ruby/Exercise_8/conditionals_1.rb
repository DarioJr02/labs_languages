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



puts('Hurrah!') if a_day == 'Saturday' or a_day == 'Sunday' and not working_overtime # and has a higher precedence than or.
puts('Hurrah!') if a_day == 'Saturday' or (a_day == 'Sunday' and not working_overtime)

puts('Hurrah! (Using &&/||/!).') if a_day == 'Saturday' || a_day = 'Saturday' && !working_overtime

# 3. === Case equality operator => It returns a boolean value.

# checking object class type.
puts("\nCheking object class type:\n")
puts(String === 's')
puts(Integer === 3.4.to_int)
puts(Float === 3.4)
puts(Range === ('b'..'h'))
puts(Range === ('b'..'h').to_a)
puts(Hash === {'Victor' => 9})

# checking if a value is in a range.
puts("\nCheking if a value is in a range:")
puts(('a'..'r') === 'k')
puts(('g'..'r').include?('h'))

# verifying patterns
puts("\nVerifying patterns:")
puts(/^[A-Z]/ === 'dolar')

# 4. unless tests.
puts("\nunless tests:")
day = 'Monday'

unless day == 'Saturday' || day == 'Sunday' then # then ==> optional
  puts('Work and study.')
end

if !day.include?('Saturday') || !day.include?('Sunday')
  puts('Work and study.')
else
  puts('Off day.')
end

# Single line if and unless tests.
puts('Work and study.') unless day == 'Saturday' || day == 'Sunday'
puts('Work and study.') if !(day == 'Saturday' || day == 'Sunday')

# .include? Preferred instead comparing a value with multiple items in conditional test when var type is Array.
puts('Work and study.') unless day.include?('Saturday') || day.include?('Sunday')
