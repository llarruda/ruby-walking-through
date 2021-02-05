# frozen_string_literal: true

#
#  Ruby Basic Object-Oriented Programming - Challenge of Ruby Classes and Modules - LinkedIn Learning
#
#  created by @llarruda
#  Mon 29 Apr 2020 01:46:38 PM -03
#
#

require_relative 'dice'

# Represents a set of dices
# call the Dice class to create the number of Dices based parameter passed to initialize method
class DiceSet
  # Gets dice number of current DiceSet
  attr_accessor :dices_number

  # Inicitalizes the dice's set passing the quantity of dice in this set
  def initialize(dices_number)
    @dices_number = Array.new(dices_number)
  end

  # Display result of a set of dices (game)
  # @return [Array] set_faces
  def display
    make_set
  end

  private

  # function to instantiate set's dice and return an array with the faces, based on the Dice#
  # @return [Array] set_faces
  def make_set
    set_faces = []

    dices_number.each do
      dice = Dice.new
      set_faces.push(dice.face)
    end

    set_faces
  end
end
