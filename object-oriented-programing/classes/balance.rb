#
#  Ruby Basic Object-Oriented Programming - Methods Access Control
#
#  created by @llarruda
#  Mon 25 Apr 2020 09:28:20 AM -03
#
#

class Balance
  attr_reader :account

  def initialize(options={})
    @account = options[:account]
    @balance = options[:balance] || 0.00
  end

  def make_deposit(value)
    # calling private 'balance=' method passing value as argument
    self.balance = value
  end

  def self.categories
    %w[current salary emergence government personalité]
  end

private

  def balance
    @balance
  end

  def balance=(value)
    @balance += value
  end

  def show_balance(account)
    @account = account
    puts balance
  end

end
