#!/usr/bin/env ruby
#
# Ruby Basic Syntax - Raise exceptions
#
#  created by @llarruda
#  Mon 28 Apr 2020 05:23:18 PM -03
#

def even_numbers(array)

  unless array.is_a?(Array)
    # would be raise Argument error exception anyway, just for illustrate
    raise ArgumentError
  end

  if array.length == 0
    raise StandardError.new("Too few elements")
  end

  array.find_all { |el| el.to_i % 2 == 0 }

end

puts even_numbers(%w(2 3 4))
puts even_numbers([1,2,3,8]).join(',')
puts even_numbers("2,4,8")
