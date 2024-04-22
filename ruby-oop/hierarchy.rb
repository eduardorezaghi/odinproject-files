# akin to interfaces in Java, modules in Ruby allow us to define methods that can be added to classes
module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Walkable
  def walk
    "I'm walking."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable, Walkable, Climbable
end

nemo = Fish.new
whiskers = Cat.new
bruizer = Dog.new

p nemo.swim # I'm swimming!

begin
  whiskers.swim # NoMethodError: undefined method `swim' for #<Cat:0x00000001f3b8e0>
rescue NoMethodError => e
  puts e.message
end

p bruizer.swim # I'm swimming!
p bruizer.walk # I'm walking.

# Shows all the ancestors of the Dog class, including the modules it includes.
p Dog.ancestors # [Dog, Climbable, Walkable, Swimmable, Mammal, Animal, Object, Kernel, BasicObject]