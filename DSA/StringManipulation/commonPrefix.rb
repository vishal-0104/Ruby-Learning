def longest_common_prefix(string)

  if string.empty?
    return ""
  end

  prefix = string[0]
  string.each do |string|
    while !string.start_with?(prefix)
      prefix = prefix[0..-2]
      return "" if prefix.empty?
    end
  end
  return prefix
  
end

String = gets.chomp.split(" ")
result = longest_common_prefix(String)
if result == ""
  puts "No common prefix found."
else
  puts "The longest common prefix is :- #{result}"
end