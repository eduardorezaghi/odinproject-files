module Towable
  def tow
    "I can tow a trailer!"
  end
end


class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color, :speed
  attr_reader :year, :model

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @speed = 0
    @@number_of_vehicles += 1
  end

  def years_old
    Time.now.year - self.year
  end

  def age()
    puts "Your #{self.model} is #{years_old} years old."
  end

  def speed_up(number)
    self.speed += number
    puts "You push the gas and accelerate #{number} km/h."
  end

  def brake(number)
    self.speed -= number
    puts "You push the brake and decelerate #{number} km/h."
  end

  def shut_down
    self.speed = 0
    puts "Let's park this car!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def info
    "#{self.year} #{self.model} in #{self.color}"
  end
end

class Car < Vehicle
  attr_reader :make

  def initialize(make, model, year, color)
    super(year, model, color)
    @make = make
  end

  def info
    "Car #{self.year} #{self.make} #{self.model} in #{self.color}"
  end

  def to_s
    return "The car info is: #{self.make} #{self.model} #{self.year} #{self.color} #{self.speed}"
  end
end

class Truck < Vehicle
  include Towable

  attr_reader :make

  def initialize(make, model, year, color)
    super(year, model, color)
    @make = make
  end

  def info
    "Truck #{self.year} #{self.make} #{self.model} in #{self.color}"
  end

  def to_s
    return "The truck info is: #{self.make} #{self.model} #{self.year} #{self.color} #{self.speed}"
  end
end



corolla = Car.new("Toyota", "Corolla", 2009, "white")
puts corolla.info
corolla.speed_up(60)
corolla.speed_up(60)
corolla.brake(60)
corolla.shut_down
corolla.spray_paint("black")
puts Car.gas_mileage(13, 351) # 27 miles per gallon of gas
puts corolla

f150 = Truck.new("Ford", "F150", 2009, "black")
puts f150.info
puts f150.tow # I can tow a trailer!

Vehicle.number_of_vehicles # This program has created 2 vehicles

######

p Car.ancestors # => [Car, Vehicle, Object, Kernel, BasicObject]
p Truck.ancestors # => [Truck, Vehicle, Object, Kernel, BasicObject]


######

p corolla.age
p f150.age