class ShoppingCart
  attr_reader :items


  def initialize
    @items = []
  end


  def add_item(name, quantity, price)
    item = @items.find { |i| i[:name] == name }
    if item
      item[:quantity] += quantity
    else
      @items << { name: name, quantity: quantity, price: price }
    end
  end

  def remove_item(name)
    @items.delete_if { |item| item[:name] == name }
  end

  def total_price
    @items.sum { |item| item[:quantity] * item[:price] }
  end
end