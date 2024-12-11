def division(num1, num2)


  begin
    return num1/num2


  rescue ZeroDivisionError=> e
    puts "#{e.message} , please enter a valid number"
  end
  
  
end


puts "Enter the first number"
num1 = gets.chomp.to_i


puts "Enter the second number"
num2 = gets.chomp.to_i


puts division(num1,num2)