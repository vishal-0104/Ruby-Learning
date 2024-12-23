def maximumSubarraySum(array)
  return 0 if array.empty?
  maximum =  -Float::INFINITY
  sum = 0
  for i in 0...array.length 
    sum += array[i]
    if sum > maximum
      maximum = sum
    end
    if sum < 0
      sum = 0
    end
  end
  return maximum
end

array = gets.chomp.split.map{|num| num.to_i}
puts "The maximum subarray sum is :- #{maximumSubarraySum(array)}"