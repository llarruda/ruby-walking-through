#
#  Ruby Basic Object-Oriented Programming - Getters and Setters cleaner
#
#  created by @llarruda
#  Mon 25 Apr 2020 07:02:30 PM -03
#
#

class Automobile
  def model
    @model
  end

  # the model= is the identifier of method and allow assign
  # value to this method, that it will transfer as argument to instance variable
  def model=(model)
    @model = model
  end
end
