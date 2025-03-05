require 'set'

def common_elements(array1, array2)
  set1 = Set.new(array1)
  elements = []

  array2.each do |ele|
    elements << ele if set1.include?(ele)
  end

  elements
end

puts "enter the elements of array 1"
array1 = gets.chomp.split.map(&:to_i)

puts "enter the elements of array 2"
array2 = gets.chomp.split.map(&:to_i)

puts common_elements(array1, array2).inspect 
