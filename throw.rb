puts "Enter the number of elements:"
n = gets.chomp.to_i

puts "Enter the array of strings:"
names = gets.chomp.split.map(&:to_s)

catch(:names_found) do
  names.each do |name|
    if name == "exit"
      puts "The name 'exit' is found. Stopping process."
      throw :names_found
    end
    puts "Name: #{name}"
  end
end

puts "Process has been completed."
