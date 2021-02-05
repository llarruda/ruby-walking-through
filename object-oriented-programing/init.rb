#!/usr/bin/ruby
#
#  Ruby Basic Object-Oriented Programming - Classes Loader
#
#  created by @llarruda
#  Mon 25 Apr 2020 04:21:9 PM -03
#

require_relative 'modules/nameable'
require_relative 'classes/person'
require_relative 'classes/animal'
require_relative 'classes/automobile'
require_relative 'classes/vehicle'
require_relative 'classes/vegetable'
require_relative 'classes/radio'
require_relative 'classes/motor'
require_relative 'classes/shopping_cart'
require_relative 'classes/airplane'
require_relative 'classes/animal_keep_track'
require_relative 'classes/working_with_time'

# instance of Person class
person1 = Person.new
puts person1.say_hello
person1.first_name = 'David'
person1.last_name = 'Coverdale'
puts person1.initial_and_last_name

# instance of Animal class
dog = Animal.new
dog.set_noise
puts dog.make_noise

# instance of Automobile class
car = Automobile.new
car.model = 'Uno'
puts car.model

# instance of Vehicle class
vehicle1 = Vehicle.new
vehicle1.type = 'Bike'
puts vehicle1.type

# instance of Vegetable class
tomato = Vegetable.new
tomato.name = 'tomato'
tomato.color = 'red'
puts "#{tomato.name} is #{tomato.color}"

#instance of Radio
begin
  radio4 = Radio.new
  # number out of range 1..10 dosen't pass by method validation
  # must raise and exception defined on volume method
  radio4.volume = 15
  # to set something out of this range just by crank_it_up method
  radio4.crank_it_up
  puts radio4.volume_status
rescue TooLoudError => e
  puts e.message
end

# instance of Motor class
v8 = Motor.new({noise: 'Vrramm!'})
puts v8.noise

# instance of ShoppingCart
cart = ShoppingCart.new('1', 50.99)
initial_price = ShoppingCart.sale_out
printf("The initial price is: %.2f\n", (initial_price ? initial_price : 0.0))

# instance of Airplane class methods with factory pattern
ace01 = Airplane.create_airplane
puts ace01.model

# instance of AnimalKeepTrack
dog = AnimalKeepTrack.new
puts dog.inspect
puts AnimalKeepTrack.total_animals
puts AnimalKeepTrack.current_animal.inspect
AnimalKeepTrack.species.each do |specie|
  puts specie
end
puts "_______________\nAfter modify @@specie class variable"
new_collection = AnimalKeepTrack.species = %w(frog snake alligator)
new_collection.each do |specie|
  puts specie
end

# set values in constructor class, passing hash options, result in not use default values defined internally
chicken = AnimalKeepTrack.new({ noise: 'pruaww', color: 'red-painted-black' })
p chicken

# instance of WorkingWithTime
today = WorkingWithTime.new
tomorrow = today.add_days(1)
puts tomorrow
tomorrow

fulldate = today.fulldate_unabbreviated(tomorrow)
puts fulldate
