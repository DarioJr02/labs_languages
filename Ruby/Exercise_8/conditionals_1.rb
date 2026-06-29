# frozen_string_literal: true

# The purpose of this file is to practice conditionals: if/then/else

# 1. Multiline conditional sentences

day_weather = 'Raining'

if day_weather == 'raining'.capitalize
  puts('Use an umbrella.')

else
  puts("it's not raining.")
end

# Single line conditional sentences
day_weather = 'sunny'.capitalize

puts('Use some sun cream.') if day_weather == 'Sunny'
puts('Use some sun cream.') if day_weather == 'Sunny'
# if day_weather == 'Sunny' : puts('Use some sun cream.') # Works in Ruby 1.8 only.

# 2. Operators and precedence.

# - Logical Operators => and/or/not, &&/||/!

a_day = 'Saturday'
working_overtime = true

# and has a higher precedence than or.
puts('Hurrah!') if %w[Saturday Sunday].include?(a_day) and !working_overtime
puts('Hurrah!') if a_day == 'Saturday' or (a_day == 'Sunday' and !working_overtime)

puts('Hurrah! (Using &&/||/!).') if a_day == 'Saturday' || a_day = 'Saturday' && !working_overtime

# 3. === Case equality operator => It returns a boolean value.

# checking object class type.
puts("\nCheking object class type:\n")
puts('s'.is_a?(String))
puts(3.4.to_int.is_a?(Integer))
puts(3.4.is_a?(Float))
puts(('b'..'h').is_a?(Range))
puts(('b'..'h').to_a.is_a?(Range))
puts({ 'Victor' => 9 }.is_a?(Hash))

# checking if a value is in a range.
puts("\nCheking if a value is in a range:")
puts(('a'..'r').include?('k'))
puts(('g'..'r').include?('h'))

# verifying patterns
puts("\nVerifying patterns:")
puts(/^[A-Z]/ === 'dolar')

# 4. unless tests.
puts("\nunless tests:")
day = 'Monday'

puts('Work and study.') unless %w[Saturday Sunday].include?(day) # then ==> optional

if !day.include?('Saturday') || !day.include?('Sunday')
  puts('Work and study.')
else
  puts('Off day.')
end

# Single line if and unless tests.
puts('Work and study.') unless %w[Saturday Sunday].include?(day)
puts('Work and study.') unless %w[Saturday Sunday].include?(day)

# .include? Preferred instead comparing a value with multiple items in conditional test when var type is Array.
puts('Work and study.') unless day.include?('Saturday') || day.include?('Sunday')
puts('Work and study.') if !day.include?('Saturday') || !day.include?('Sunday')
