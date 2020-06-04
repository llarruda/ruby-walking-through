#
#  Ruby Basic Object-Oriented Programming - Challenge myself to create a simple and classical inheritance scenario
#
#  created by @llarruda
#  Tue 19 May 2020 09:31:50 AM -03
#
#

require_relative 'thing'

class Treasure < Thing

  attr_accessor :value

  def initialize(name, description, value)
    super(name, description)
    if value <= 0
      raise StandardError.new('If treasure worth nothing so it is an ordinary thing!')
    else
      @value = value
    end
  end

end