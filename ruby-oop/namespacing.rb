module Animalia
  module Animals
    class Dog
      def initialize(name)
        @name = name
      end

      def bark
        puts "#{@name} says woof!"
      end
    end

    class Cat
      def initialize(name)
        @name = name
      end

      def meow
        puts "#{@name} says meow!"
      end
    end
  end

  def self.domain
    "Eukarya"
  end
end

dog = Animalia::Animals::Dog.new("Buddy")
dog.bark

cat = Animalia::Animals::Cat.new("Whiskers")
cat.meow

# Methods can also be called on the module itself.
puts Animalia.domain