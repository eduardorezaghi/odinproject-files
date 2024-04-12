class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
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

end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
fido = GoodDog.new("Fido", "24 inches", "45 lbs")

puts sparky.speak
puts sparky.name


puts sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info # Spartacus weighs 45 lbs and is 24 inches tall.
