class Shape
  def area 
    begin
      raise NotImplementedError, "Subclasses must implement the area method."
    rescue NotImplementedError => e
      puts e.message
    end
    
  end
end


class Square 
  def initialize(side)
    @side = side
  end

  def area
    @side**2
  end
end


class Triangle
  def initialize(base , height)
    @base = base
    @height = height
  end
  def area 
    0.5 *@base *@height
  end
end


shapes = [Square.new(4), Triangle.new(3, 6)]
shapes.each { |shape| puts "Area: #{shape.area}" }