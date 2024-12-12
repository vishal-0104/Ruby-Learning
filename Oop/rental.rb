class Vehicle
  def calculate_rent
    begin
      raise NotImplementedError, "Subclasses must implement the calculate_rent method."
    rescue NotImplementedError => e
      puts e.message
    end 
  end
end


class Car < Vehicle
  def initialize(days)
    @days = days
    @rent = 20
  end

  def calculate_rent
    @rent * @days
  end
end

class Bike < Vehicle
  def initialize(days)
    @days = days
    @rent = 10
  end

  def calculate_rent
    @days * @rent
  end
end

car = Car.new(2)
bike = Bike.new(2)

puts "Rent for car is : $#{car.calculate_rent}"
puts "Rent for bike is : $#{bike.calculate_rent}"