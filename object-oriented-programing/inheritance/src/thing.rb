#
#  Ruby Basic Object-Oriented Programming - Inheritance
#
#  created by @llarruda
#  Mon 25 Apr 2020 06:41:42 PM -03
#
#

class Thing
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end
