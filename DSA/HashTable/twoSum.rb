def two_sum(nums, target)
  hash = {}
  arr = []
  nums.each_with_index do |value,index|
      diff = target - value
      if(hash.find{|key,val| key == value})
          arr << hash[value]
          arr << index
          return arr
      else
       hash[diff] = index
      end
  end
  -1
end

array = [1,2,3,4,5]
puts two_sum(array , 7).inspect