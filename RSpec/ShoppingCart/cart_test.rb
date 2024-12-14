require 'rspec'
require_relative 'cart'


RSpec.describe ShoppingCart do
  let(:cart) { ShoppingCart.new }

  
  describe "#add_item" do
    it "adds an item to the cart" do
      cart.add_item("apple", 2, 3)
      expect(cart.items).to include({ name: "apple", quantity: 2, price: 3 })
    end
  end


  describe "#remove_item" do
    it "removes an item from the cart" do
      cart.add_item("apple", 2, 3)
      cart.remove_item("apple")
      expect(cart.items).not_to include({ name: "apple", quantity: 1, price: 3 })
    end
  end


  describe "#total_price" do
    it "calculates the total price of items" do
      cart.add_item("apple", 2, 3)
      expect(cart.total_price).to eq(6)
    end
  end
end
