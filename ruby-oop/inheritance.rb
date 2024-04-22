class Animal
  def speak
    "Hello!"
  end

  def move
    "I'm moving!"
  end

  def eat
    "Hmm... I'm hungry!"
  end
end

class Dog < Animal
  def speak
    super + " ... Woof!"
  end
end

class Cat < Animal
  @override
  def speak
    "Meow!"
  end
end


rex = Dog.new
whiskers = Cat.new

puts rex.speak # Woof!
puts whiskers.speak # Meow!

puts rex.move # I'm moving!
puts whiskers.move # I'm moving!