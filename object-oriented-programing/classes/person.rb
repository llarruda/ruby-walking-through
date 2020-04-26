#
#  Ruby Basic Object-Oriented Programming - Class definition
#
#  created by @llarruda
#  Mon 25 Apr 2020 04:10:20 PM -03
#
#

class Person
  attr_accessor :first_name, :last_name

  def say_hello
    'Hello!'
  end

  def full_name
    "#{first_name last_name}"
  end

  def initial_and_last_name
    "#{get_initial(first_name)} #{last_name}"
  end

private

  def get_initial(name)
    name.chars.first + '.'
  end

end
