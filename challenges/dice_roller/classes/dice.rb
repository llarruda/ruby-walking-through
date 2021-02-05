# frozen_string_literal: true

#
#  Ruby Basic Object-Oriented Programming - Challenge of Ruby Classes and Modules - LinkedIn Learning
#
#  created by @llarruda
#  Mon 29 Apr 2020 02:24:38 PM -03
#
#

# Represents a unique exclusive dice
class Dice
  # Gets the value to dice's face
  attr_reader :face

  # Initializes a dice with action of roll
  def initialize
    roll
  end

  private

  # Sets a value to dice's face
  attr_writer :face

  # Generates pseudo-random number between [1..6] to set the value of dice's face
  # @return [integer] face
  def roll
    self.face = rand(1..6)
  end
end
