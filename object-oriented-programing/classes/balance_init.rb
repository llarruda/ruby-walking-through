#!/usr/bin/ruby
#
#  Ruby Basic Object-Oriented Programming - Init file for Balance class
#
#  created by @llarruda
#  Mon 25 Apr 2020 09:37:40 AM -03
#

require_relative 'Balance'

puts "Account category:"
Balance.categories.each do |category|
  printf("%s\n", category)
end

puts 'Account information:'
balance_one = Balance.new({account: '1111', balance: 5000.00})
balance_one.make_deposit(500.75)
puts balance_one.send(:balance)
balance_one.make_deposit(3000.50)
puts balance_one.send(:balance)
