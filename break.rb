puts "Enter the number of element in array"
n = gets.chomp.to_i


puts "Enter the elements of array"
arr = gets.chomp.split.map(&:to_i)


arr.each do |i|
  if i % 7 == 0
    puts i
    break
  end
end