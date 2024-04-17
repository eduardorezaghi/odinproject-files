class Car

  attr_accessor :color, :speed
  attr_reader :make, :model, :year

  def initialize(make, model, year, color)
    @make = make
    @model = model
    @year = year
    @color = color
    @speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
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
    "#{self.year} #{self.make} #{self.model} in #{self.color}"
  end

  def to_s
    return "The car info is: #{self.make} #{self.model} #{self.year} #{self.color} #{self.speed}"
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