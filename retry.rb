begin
  puts "Enter a number "
  num = gets.chomp.to_i


  puts "Enter a divisor"
  divisor = gets.chomp.to_i


  raise if divisor == 0


  puts "result of division is #{num/divisor}"


rescue 
  puts "Enter a valid divisor"
  retry

  
end
