#!/usr/bin/ruby
#
#  Ruby Basic Syntax - samples of I/O operations and basic string usage
#
#  created by @llarruda
#  Sat 18 Apr 2020 10:21:58 AM -03
#

puts 'Hello Ruby World!'

print 'Enter your name: '

name = gets.chomp

puts "Your journey with Ruby, #{name}, certainly, will be more fun!"

# parentheses are optional
printf("Number: %5.2f\nString: %s\n", 2.75, 'hey')

## data conversion

print 'Enter your salary: '

# casting - explicit conversion
# for adjustments made by ruby the conversion is called coercion
salary = gets.to_f

puts "Your credit card limit can be up to " + (salary * 0.3).to_s
