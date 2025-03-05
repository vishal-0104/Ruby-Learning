def reverse_polish_notation(token)
  stack = []

  exp = token.split

  exp.each do |val|
    if val.match?(/\d+/)
      stack.push(val.to_i)
    else
      b = stack.pop
      a = stack.pop

      case val
      when '+'
        stack.push(a+b)
      when '-'
        stack.push(a-b)
      when '*'
        stack.push(a*b)
      when '/'
        stack.push(a/b)
      end
    end
  end
  stack.pop
end



puts "Enter the reverse polish notation"
 RPN = gets.chomp

puts reverse_polish_notation(RPN)
