class Product
  attr_reader :name, :price, :quantity


  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end


  def total_price
    price * quantity
  end
end


class ElectronicProduct < Product
  def total_price
    super * 0.9
  end
end

class ClothingProduct < Product
  def total_price
    super * 0.95
  end
end


products = [ElectronicProduct.new("Laptop", 1000, 1), ClothingProduct.new("T-Shirt", 20, 3)]
products.each do |product|
  puts "#{product.name}, after discount final price: $#{product.total_price}"
end
