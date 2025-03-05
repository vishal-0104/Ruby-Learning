def anagrams(strings)
  anagrams = Hash.new { |hash, key| hash[key] = [] }
  strings.each do |string|
    sorted_key = string.chars.sort.join
    anagrams[sorted_key] << string
  end
  return anagrams.values
end


string = gets.chomp.split
puts anagrams(string).inspect