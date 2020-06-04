#!/usr/bin/env ruby
#
#  Ruby Basic Object-Oriented Programming - Challenge myself to create a simple and classical inheritance scenario
#
#  created by @llarruda
#  Tue 19 May 2020 09:27:50 AM -03
#

require_relative 'classes/treasure'

begin

  ruby = Treasure.new('ruby', 'a precious gem of middle east', 50)
  p ruby


  puts ruby.name, ruby.description, ruby.value
rescue ArgumentError => e
  puts "#{e.backtrace}\n Wrong number of arguments"

end

