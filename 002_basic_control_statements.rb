#!/usr/bin/ruby
#
#  Ruby Basic Syntax - samples of I/O operations and basic string usage
#
#  created by @llarruda
#  Sat 18 Apr 2020 11:05:12 AM -03
#

puts 'Enter a integer: '

number = gets.chomp.to_i

if number < 10
  puts "#{number} is greater than 10."
else
  puts "#{number} is less than 10."
end

while number < 10
  puts "hey #{number}"
  number = number + 1
end

# statement modifiers are useful when the body of statement is only a single expression
# behaves as do-while, at least once the subtraction will be realize
puts number = number - 5 while number > 10

count = 5
loop do
  break if count <= 0
  puts count
  count -= 1
end

cart = %w(banada orange watermelon)

until cart.empty?
  first = cart.shift
  puts first
end
