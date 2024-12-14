require 'rspec'
require_relative 'file'


RSpec.describe FileParser do
  describe ".parse_csv" do
    it "parses CSV and returns an array of arrays" do
      file_content = "name,age\nJohn,30\nDoe,25"
      result = [["name", "age"], ["John", "30"], ["Doe", "25"]]
      expect(FileParser.parse_csv(file_content)).to eq(result)
    end


    it "handles an empty file and returns an empty array" do
      expect(FileParser.parse_csv("")).to eq([])
    end


    it "raises an error for a malformed file (mismatched columns)" do
      file_content = "name,age\nJohn\nDoe,25"
      expect { FileParser.parse_csv(file_content) }.to raise_error("Malformed file: Row 2 has mismatched columns.")
    end


    it "handles a single row of data" do
      file_content = "name,age\nJohn,30"
      result = [["name", "age"], ["John", "30"]]
      expect(FileParser.parse_csv(file_content)).to eq(result)
    end


    it "handles trailing and leading whitespace in headers and values" do
      file_content = " name , age \n John , 30 "
      result = [["name", "age"], ["John", "30"]]
      expect(FileParser.parse_csv(file_content)).to eq(result)
    end

    
    it "raises an error for rows with extra columns" do
      file_content = "name,age\nJohn,30,extra"
      expect { FileParser.parse_csv(file_content) }.to raise_error("Malformed file: Row 2 has mismatched columns.")
    end
  end
end
