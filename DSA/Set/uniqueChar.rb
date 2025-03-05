require 'set'

def unique_char?(string)
  new_set = Set.new

  string.each_char do |char|
    return false if new_set.include?(char)
    new_set.add(char)
  end

  true
end


puts "enter the string"
string = gets.chomp

puts unique_char?(string)

