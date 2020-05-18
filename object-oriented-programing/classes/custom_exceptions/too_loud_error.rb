#
#  Ruby Basic Object-Oriented Programming - Custom exceptions
#
#  created by @llarruda
#  Mon 25 Apr 2020 06:26:44 PM -03
#
#

class TooLoudError < StandardError

  def initialize(msg = nil)
    super(msg || "Negative or too loud volume.")
  end

end
