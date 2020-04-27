#
#  Ruby Basic Object-Oriented Programming - Working with time
#
#  created by @llarruda
#  Mon 27 Apr 2020 02:49:42 PM -03
#
#

require 'date'

class WorkingWithTime

  def add_days(days_number)
    puts 'actual date: '
    puts self.create_time

    # add the number of seconds that are equivalent to days passed as argument
    self.create_time + (days_number * (60*60*24))
  end

  def fulldate_unabbreviated(datetime)
    puts self.week_day(datetime)
    "#{datetime.day}, #{self.months_unabbreviated(datetime.month)}"
  end

private

  ##
  # function that instantiate a Time class calling now method
  #
  def create_time
    Time.now
  end

  ##
  # function that return the name of month
  # @param month number month (1..12)
  # @return month name
  #
  def months_unabbreviated(month)
    case month
    when 1
      'January'
    when 2
      'February'
    when 3
      'March'
    when 4
      'April'
    when 5
      'May'
    when 6
      'June'
    when 7
      'July'
    when 8
      'August'
      else 'Error to convert month from number to month name'
    end
  end

  #
  # function to get day week
  # @param date on datetime format
  # @todo boolean methods doesn't work properly to return a week day
  #
  def week_day(date)
    case date
    when date.monday?
      'monday'
    when date.tuesday?
      'tuesday'
      else 'quarta'
    end
  end

end