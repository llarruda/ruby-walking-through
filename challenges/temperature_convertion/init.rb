# frozen_string_literal: true

#
#  Ruby Basic Object-Oriented Programming - Program to convert Celsius to Fahrenheit
#
#  created by @llarruda
#  Sun 14 Feb 2020 01:21:14 PM -03
#
#

require_relative 'classes/temperature'

# passing a Float as hash key
temp = Temperature.new(32.0 => 'c')
puts "#{temp.converted_temp}° F"

# passing a Symbol as hash key
temp = Temperature.new('89.6': 'f')
puts "#{temp.converted_temp}° C"
