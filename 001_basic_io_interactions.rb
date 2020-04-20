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
printf("Number %5.2f\nString %s", 2.75, 'hey')
