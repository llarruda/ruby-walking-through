#
#  Ruby Basic Object-Oriented Programming - Inheritance
#
#  created by @llarruda
#  Mon 25 Apr 2020 06:45:45 PM -03
#
#

require_relative 'src/thing'
require_relative 'src/treasure'
require_relative 'src/chef'
require_relative 'src/amateur_chef'
require_relative 'src/date'
require 'date'

ruby = Treasure.new('ruby', 'A precious eastern gem', '500_000')

puts ruby.name, ruby.description, ruby.value

puts '>> Chef'
chef = Chef.new
chef.cook_dinner
chef.shopping_list_for_tomorrow

puts '>> Amateur Chef'
amateur_chef = AmateurChef.new
amateur_chef.cook_dinner
amateur_chef.shopping_list_for_tomorrow

# if call Date.new without namespace, will get error from try to access the
# getter method for date attribute (interpreted as date method from Date
# built-in class that doesn't exists)
meet = Spark::Date.new
puts meet.date, meet.location
