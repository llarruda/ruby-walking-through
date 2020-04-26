#!/usr/bin/ruby
#
#  Ruby Basic Object-Oriented Programming - Class methods with factory pattern
#
#  created by @llarruda
#  Mon 25 Apr 2020 11:50:44 AM -03
#

class Airplane
  attr_accessor :model, :color

  def initialize(options={})
    @model = options[:model] || 'default'
    @color = options[:color] || 'silver governor'
  end

  def self.create_airplane
    Airplane.new(model: 'spitfire', color: 'green brazil')
  end
end
