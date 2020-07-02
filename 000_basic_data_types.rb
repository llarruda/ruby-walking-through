#!/usr/bin/env ruby
#
#  Ruby Basic - Working with files
#
#  created by @llarruda
#  Tue 2 Jul 2020 08:44:30 AM -03
#

# integer
number = 2

puts "The value of number is: #{number}"
# in version previous than 2.4, the result of call class method would be fixnum or bignum, depending of range
puts "The data type of number variable is: #{number.class}"

print "Enter your age: "
age = gets.chomp
printf "Your age is %d\n", age

# large integer number representation
amount = 1_200_450_300
print amount, ' - ', amount.class, "\n"

# float
pi = 3.14159
puts pi

# large float number representation
amount = 1_200_450_300.50
print amount, ' - ', amount.class, "\n"

# string
name = 'Leandro'
print name, ' - ', name.class, "\n"

print 'Enter your last name: '
last_name = gets.chomp
print last_name, ' - ', last_name.class, "\n"

# interpolation of strings
puts "My complete name is #{name} #{last_name}"

# strings in Ruby are collection of character indexes
puts "The length of your name, #{name}, is #{name.length}, and the first letter (index 0) is #{name[0]}"

# boolean
true_logic_value = 1 > 0
print true_logic_value, ' - ', true_logic_value.class, "\n"

false_logic_value = false
print false_logic_value, ' - ', false_logic_value.class, "\n"

# array
fruit = ['lemmon', 'apple', 'watermelon', 'banana']
puts fruit.inspect

colors = %w(red green blue)
# same as puts var.inspect
p colors

# instantiate empty arrays
vector = []
puts vector.class

# same as
collection = Array.new
puts collection.class

# the constructor of Array accepts 0 (look above), one (initial size of array) or two argument (size and default value)
list = Array.new(3)
puts list.size
list = Array.new(3, true)
p list

# add elements in an array
vector = [2]
p vector
puts vector.class

vector[1] = 4
p vector
puts vector.class

vector << 6
p vector
puts vector.class

# wrong way
# you just loose the reference to vector array and make vector points to an integer
vector = 8
p vector
p vector.class

# come back with our data
vector = [2, 4, 6, 8]
p vector
puts vector.class

begin
  vector[] = 10
rescue
  puts 'You cannot assign a value to array without inform an index'
end

# with rescue fallback your vector var is safe
p vector

# hash
