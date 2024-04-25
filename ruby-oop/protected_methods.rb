class Shape
  def initialize(major, minor)
    @major = major
    @minor = minor
  end

  def get_area
    area # Call the protected method area
  end
end

class Circle < Shape
  protected
  def area
    Math::PI * @major * @major # Calculate the area of a circle
  end
end

class Ellipse < Shape
  def get_area
    self.area # Call the protected method area
  end

  protected
  def area
    Math::PI * @major * @minor # Calculate the area of an ellipse
  end
end


puts Circle.new(10, 20).get_area # 314.1592653589793
puts Ellipse.new(10, 20).get_area # 628.3185307179587

