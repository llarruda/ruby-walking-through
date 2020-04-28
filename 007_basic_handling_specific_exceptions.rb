#!/usr/bin/env ruby
#
# Ruby Basic Syntax - Handle specific exceptions and some exception methods
#
#  created by @llarruda
#  Mon 28 Apr 2020 05:18:18 PM -03
#

def calculate_average_velocity(distance, time)

  av = distance / time
end

begin

  # if you pass '2' as an argument will raise the TypeError Exception by fall into rescue for this type of exception
  puts calculate_average_velocity(2,2)
  # if call the method with typo error will rise a NoMethodError,
  puts calculate_average_velocity(5, 0)

# using exception methods, 'e' is local variable, we assigning the exception to 'e' variable
rescue ZeroDivisionError => e
  # we ca access in a exception captured by rescue statement:
  # Exception#class Exception#message Exception#backterace
  puts "#{e.class}: #{e.message}\n#{e.backtrace} \nImpossible divide by zero."

# handle two types in the same rescue statement
rescue TypeError, ArgumentError
  puts 'Treating both, Type Error and ArgumentError handled'

rescue NoMethodError
  puts "Method doesn't exist."

# StandardError is the default class to handle with Exceptions, it has
# many subclass, and using it catches error raise from subclasses,
# or we ca use one of subclasses to have more specific errors
rescue
  puts "Some other StandardError handled"
end
