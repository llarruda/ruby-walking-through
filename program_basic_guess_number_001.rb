#!/usr/bin/ruby
#
#  Ruby Basic Syntax - Passing arguments from command-line
#
#  created by @llarruda
#  Mon 23 Apr 2020 06:12:01 PM -03
#

print 'Enter with your name: '

name = gets.chomp

puts "Welcome #{name}, you are in Guess Number!"
puts "I have a number between 1 and 100. Guess it if can!"

secret_number = rand(100) + 1
chances_left = 10
hit = false

while !hit && chances_left > 0

  puts 'Enter your number: '
  input_number = gets.to_i

  if input_number < secret_number
    puts "Oops! Your guess was LOW."
  elsif input_number > secret_number
    puts "Oops! Your guess was HIGH."
  elsif input_number == secret_number
    puts "Good job, #{name}."
    hit = true
  end

  printf("%s%d\n", 'Chances left: ', chances_left -= 1)

end

# unless statement it's evaluated as if opposite, the value of expression
# to be evaluated must be false to execute the block
unless hit
  puts "Sorry, #{name}! 10 tries wasn't enough."
end

# debug
printf("Secret Number: %d - Last try: %d", secret_number,  input_number)
