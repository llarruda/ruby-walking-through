#
#  Ruby Basic Object-Oriented Programming - Inheritance - super method study
#
#  created by @llarruda
#  Mon 27 Apr 2020 02:04:42 PM -03
#
#

require_relative 'chef'

class AmateurChef < Chef

  def cook_dinner
    puts "follow the recipe"
    super
    puts "clean up"
  end

  def shopping_list_for_tomorrow
    super
    puts "ask to the manager to permission to buy the items"
  end
end