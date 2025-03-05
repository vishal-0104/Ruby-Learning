def is_valid(s)
  stack = []
  pairs = {'(' => ')', '{' => '}', '[' => ']'}


  s.each_char do |char|
    if pairs.key?(char)
      stack.push(char)
    elsif pairs.values.include?(char)
      return false if stack.empty? || pairs[stack.pop] != char
    end
  end
  

  stack.empty?
end


puts "Enter the string of brackets: "
s = gets.chomp

if is_valid(s)
  puts "true"
else
  puts "false"
end