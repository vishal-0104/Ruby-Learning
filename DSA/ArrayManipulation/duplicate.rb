def find_Duplicate(array)
  slow = array[0]
  fast = array[0]
  while slow != fast
    slow = array[slow]
    fast = array[array[fast]]
  end
  slow = array[0]
  while slow!=fast
    slow = array[slow]
    fast = array[fast]
  end
  return slow
end

array = gets.split.map{|num| num.to_i}
puts "The duplicate number is :- #{find_Duplicate(array)}"