#!/usr/bin/ruby
#
# Ruby Basic Syntac - Passing arguments from command-line
#
#  created by @llarruda
#  Mon 20 Apr 2020 06:47:01 PM -03
#

# run this snippet passing args ./script.rb arg1 arg2...
input_array = ARGV

puts 'raw array: ' +  input_array.to_s
puts 'ARGV size: ' + ARGV.size.to_s

# split args with splat operator (*)
first_arg, *rest_arg = ARGV

puts first_arg
puts rest_arg
