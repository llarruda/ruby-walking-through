#
#  Ruby Basic Object-Oriented Programming - Modules and Namespacing
#
#  created by @llarruda
#  Mon 27 Apr 2020 07:35:42 PM -03
#
#

module Nameable
  attr_accessor :first_name, :last_name

  def full_name
    "#{first_name last_name}"
  end

  def initial_and_last_name
    "#{get_initial(first_name)} #{last_name}"
  end

  def get_initial(name)
    first_name.chars.first + '.'
  end
end
