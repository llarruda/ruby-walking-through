#
#  Ruby Basic Object-Oriented Programming - Class Attributes
#
#  created by @llarruda
#  Mon 25 Apr 2020 04:10:20 PM -03
#
#

class AnimalKeepTrack
  @@species = %w[pig cat dog horse]
  @@total_animals = 0
  @@current_animal = []

  attr_accessor :noise, :color

  def initialize(options={})
    @noise = options[:noise] || 'urgh'
    @color = options[:color] || 'brown'
    @@total_animals += 1
    @@current_animal << self
  end

  def self.species
    @@species
  end

  def self.species=(array)
    return unless array.is_a?(Array)
    @@species = array
  end

  def self.current_animal
    @@current_animal
  end

  def self.total_animals
    @@total_animals
  end
end
