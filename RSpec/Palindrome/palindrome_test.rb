require 'rspec'
require_relative 'palindrome'


RSpec.describe Palindrome do
  let(:palindrome) { Palindrome.new }


  describe "#palindrome_number?" do
    it "returns true for a valid palindrome number" do
      expect(palindrome.palindrome_number?("121")).to be(true)
    end


    it "returns false for a non-palindrome number" do
      expect(palindrome.palindrome_number?("123")).to be(false)
    end


    it "handles empty strings as palindromes" do
      expect(palindrome.palindrome_number?(" ")).to be(true)
    end
  

    it "ignores special characters and case" do
      expect(palindrome.palindrome_number?("12@21")).to be(true)
    end
  end
end
