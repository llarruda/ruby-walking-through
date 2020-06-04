#!/usr/bin/env ruby
#
#  Ruby Basic - Working with files
#
#  created by @llarruda
#  Tue 19 May 2020 03:36:50 AM -03
#

puts File.join('path', 'to', 'file.txt')

puts 'This is a relative path: ' + __FILE__
puts 'this is an absolute path: ' + File.dirname(__FILE__)
