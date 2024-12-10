loop do


puts "Enter the value between 1 to 10"

num = gets.chomp.to_i

if num>=1 && num <=10
  puts num
  exit
else
  puts "Enter an invalid number"
  redo
end
end



