#
#  Ruby Basic Object-Oriented Programming - Challenge of Ruby Classes and Modules - LinkedIn Learning
#
#  created by @llarruda
#  Mon 29 Apr 2020 01:46:38 PM -03
#
#

require_relative 'dice'

class DiceSet

  attr_accessor :dices_number

  def initialize(dices_number)
    @dices_number = Array.new(dices_number)
  end

  def display
    self.make_set
  end

private

  # function to return an array with the faces resulting of roll dice
  def make_set

    set_faces = []

    self.dices_number.each do
      dice = Dice.new
      set_faces.push(dice.face)
    end

    set_faces
  end
end
