require 'rspec'
require_relative 'string'

RSpec.describe StringManipulator do
  let(:string) { StringManipulator.new("hello world") }

  describe "#reverse_words" do
    it "reverses words in a sentence" do
      expect(string.reverse_words).to eq("world hello")
    end
  end

  describe "#capitalize_words" do
    it "capitalizes all words in a sentence" do
      expect(string.capitalize_words).to eq("Hello World")
    end
  end
end
