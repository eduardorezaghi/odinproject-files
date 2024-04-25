class Person
  attr_accessor :name, :age

  def initialize(name="John Doe", age=nil)
    @name = name
    @age = age
  end

  def to_s
    string = ""
    string += "This person is the infamous #{name}"
    unless age.nil?
      string += ", #{age} years old."
    end
    return string
  end

end


p1 = Person.new()
p2 = Person.new("Jane Doe", 25)
p3 = Person.new("Captain Kirk", 35)
p4 = Person.new("Mr. Spock", 45)
p5 = Person.new("Mr. Nobody")

puts p1, p2, p3, p4, p5
