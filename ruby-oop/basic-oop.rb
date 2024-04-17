class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :height, :weight, :age
  @@number_of_dogs = 0


  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def initialize(name, height, weight, age)
    @@number_of_dogs += 1
    self.name = name
    self.height = height
    self.weight = weight
    self.age = age * DOG_YEARS
  end

  def speak
    # a.k.a this.name in other languages
    # use getter method to access instance variable
    "#{name} says 'Woof!'"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs", 4)
fido = GoodDog.new("Fido", "24 inches", "45 lbs", 8)

puts sparky
puts sparky.speak
puts sparky.name
puts sparky.info # Sparky weighs 10 lbs and is 12 inches tall.
puts

puts sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky # Now is Spartacus
puts sparky.info # Spartacus weighs 45 lbs and is 24 inches tall.
puts

puts fido
puts fido.info # Fido weighs 45 lbs and is 24 inches tall.
puts

puts GoodDog.what_am_i # I'm a GoodDog class!
puts "Total number of dogs: #{GoodDog.total_number_of_dogs}" # 2