class Shape
  def area
    raise NotImplementedError, "Subclasses must implement the area method."
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2
  end


end


class Rectangle < Shape
  def initialize(width, height)
    @width = width
    @height = height
  end


  def area
    @width * @height
  end


end


circle = Circle.new(2)
rectangle = Rectangle.new(2, 4)
puts "Circle area: #{circle.area.round(2)}"
puts "Rectangle area: #{rectangle.area}"
