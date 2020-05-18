#
#  Ruby Basic Object-Oriented Programming - Challenge of Ruby Classes and Modules - LinkedIn Learning
#
#  created by @llarruda
#  Mon 29 Apr 2020 01:46:38 PM -03
#
#

class DiceSet

  attr_accessor :number_dices, :quantity

  def initialize(number_dices)
    @number_dices = number_dices
    # empty instance variable just for iterate through
    @quantity = Array.new(self.number_dices)
  end

  def display
    self.roll
  end

private

  def roll

    faces = []

    self.quantity.each do |dice| faces.push(dice = rand(6) + 1)
    self.quantity[0] = dice
    puts self.quantity[0]
    end

    faces
  end
end
