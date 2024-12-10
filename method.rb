def find_string(arr, target)
  arr.each_with_index do |val , index|
    return index if val == target
  end

end

puts "Enter the number of element"
n = gets.chomp.to_i


puts "Enter the array of string"
arr = gets.chomp.split.map(&:to_s)


puts "Enter the target value"
target = gets.chomp.to_s


ans = find_string(arr , target)
if ans == -1
  puts "target not found"
else
  puts ans
end

