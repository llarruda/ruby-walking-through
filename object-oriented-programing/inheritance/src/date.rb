#
#  Ruby Basic Object-Oriented Programming - Modules and Namespacing
#
#  created by @llarruda
#  Mon 27 Apr 2020 06:41:42 PM -03
#
#

# module when wrapping a class create a namespace
module Spark
  class Date
    attr_accessor :date, :location

    def initialize(options={})
      @date = options[:date] || Time.now - (7 * (60 * 60 * 24))
      @location = options[:location] || 'Curitiba'
    end
  end
end
