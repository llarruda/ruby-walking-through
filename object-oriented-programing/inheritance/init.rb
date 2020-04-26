#
#  Ruby Basic Object-Oriented Programming - Inheritance
#
#  created by @llarruda
#  Mon 25 Apr 2020 06:45:45 PM -03
#
#

require_relative 'src/thing'
require_relative 'src/treasure'

ruby = Treasure.new('ruby', 'A precious eastern gem', '500_000')

puts ruby.name, ruby.description, ruby.value
