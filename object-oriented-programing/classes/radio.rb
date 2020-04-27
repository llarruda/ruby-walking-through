#
#  Ruby Basic Object-Oriented Programming - Changing the behavior of Attribute Methods
#
#  created by @llarruda
#  Mon 25 Apr 2020 07:41:30 PM -03
#
#

class Radio
  attr_reader :volume

  def volume=(value)
    return if value < 1 || value > 10
    @volume = value
  end

  def crank_it_up
    # refer to instance variable @volume
    self.volume = 11
  end

  def volume_status
    # refer to attribute method (attr_reader)
    "Current volume: #{@volume}"
  end
end