#!/usr/bin/env ruby
#
# Ruby Basic Syntac - Read files
#
#  created by @llarruda
#  Mon 28 Apr 2020 09:05:23 AM -03
#

# rescue in a block
begin
  1/0
rescue
  puts "1 - Cannot divide by zero"
end

# rescue inside a method definition
def divide_with_rescue(x, y)

  puts x / y
rescue
  # allowed because method works as begin-end block
  puts '2 - cannot divide by zero'

end

divide_with_rescue(6, 1)
divide_with_rescue(1000, 0)

# begin-end block with rescue outside method
def divide(x, y)

  puts x / y

end

begin

  # the call to method must be inside block with rescue statement
  divide(4,2)
  divide(4,0)

rescue

  puts "3 - Cannot divide by zero"

end
