#!/usr/bin/ruby
#
#  Ruby Basic Syntax - some usage for blocks and iterators
#
#  created by @llarruda
#  Mon 20 Apr 2020 03:23:53 PM -03
#

# code block works like callback functions
def greet
  yield('Wake up', 'Neo')
end

# arguments passed for code block using (between pipes)
greet { |greeting, name| puts "#{greeting}, #{name}." }

# block associate to an call of an method which has arguments
def another_greet(greeting, name)
  puts "#{greeting}, #{name}!"
  yield('Wake up', 'Neo')
end

another_greet('Morning', 'Neo') { |greeting, name| puts "#{greeting}, #{name}." }

# create iterators structures
resistance = %w( neo trinity morpheus switch cypher )
resistance.each { |awake| print awake, ' '}
