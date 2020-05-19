#
#  Ruby Basic Object-Oriented Programming - Challenge of Ruby Classes and Modules - LinkedIn Learning
#
#  created by @llarruda
#  Mon 29 Apr 2020 02:24:38 PM -03
#
#

class Dice

  attr_reader :face

  def initialize
    self.roll
  end

private

  def face=(value)
    @face = value
  end

  def roll
    self.face = rand(6) + 1
  end
end
