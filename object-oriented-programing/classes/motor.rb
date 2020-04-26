#
#  Ruby Basic Object-Oriented Programming - Initialize method
#
#  created by @llarruda
#  Mon 25 Apr 2020 09:16:20 PM -03
#
#

class Motor
  attr_accessor :noise

  def initialize(options={})
    @noise = options[:noise] || 'Brrrum!'
  end

end
