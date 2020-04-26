#
#  Ruby Basic Object-Oriented Programming - Inheritance
#
#  created by @llarruda
#  Mon 25 Apr 2020 06:43:34 PM -03
#
#

require_relative 'thing'

class Treasure < Thing

  attr_reader :value

  def initialize(name, description, value)
    super(name, description)
    @value = value
  end
end
