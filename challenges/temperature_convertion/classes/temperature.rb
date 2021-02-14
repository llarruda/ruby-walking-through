# frozen_string_literal: true

#
#  Ruby Basic Object-Oriented Programming - Program to convert Celsius to Fahrenheit
#
#  created by @llarruda
#  Sun 14 Feb 2020 01:21:14 PM -03
#
#

# Representation of temperature and your operations as convert to another scale
# If temperature is given in Celsius the object has a instance variable converted_temp with
# relative temperature in Fahrenheit scale, as well as opposite yields temperature in Celsius
class Temperature
  attr_reader :temp, :unity, :converted_temp

  # Constructor of Temperature class
  # @param **temp_unit: Hash (double splat operator)
  # temp: unit, where temp is a valid temperature (float) and unit is a valid temperature scale (c or f)
  def initialize(**temp_unity)
    raise StandardError, "It's only possible to convert one temperature at a time" if temp_unity.length > 1

    temp_unity.each do |temp, unity|
      # regex must operates over string, if a number (Integer or Float) is passed will bring up unexpect evaluation
      raise StandardError, "#{temp} is not a valid number." if temp.to_s !~ /-?\d+/

      # same as /^(|C|c|F|f)$/ but more elegant
      if unity !~ /^[CcFf]$/
        raise StandardError, "#{unity} is not acceptable units for temperature"
      end

      # Cast is needed to allow pass Symbol in the hash parameter
      @temp = temp.to_s.to_f
      @unity = unity
    end

    @converted_temp = convert(@temp, @unity)

  rescue StandardError => e
    puts e.message
    exit
  end

  # Method to calculate the corresponding temperature in Celsius or Fahrenheit
  # @param temp: Float
  # @param unity: String
  # @return result: Float
  def convert(temp, unity)
    case unity
    when 'C', 'c'
      converted_temp = 1.8 * temp + 32
    when 'F', 'f'
      converted_temp = (5.0 / 9.0) * (temp - 32)
    else
      abort 'Must specify C for Celsius or F to Fahrenheit!'
    end

    converted_temp
  end
end
