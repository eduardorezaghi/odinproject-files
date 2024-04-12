class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    # a.k.a this.name in other languages
    "#{@name} says 'Woof!'"
  end

end

sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

puts sparky.speak
