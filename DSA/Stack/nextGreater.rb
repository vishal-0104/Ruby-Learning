def next_greater_ele(nums1, nums2)
  next_greater = {}
  stack = []


  nums2.reverse.each do |num|
   
    stack.pop while !stack.empty? && stack.last <= num
    
    next_greater[num] = stack.empty? ? -1 : stack.last
    
    stack.push(num)
  end

  nums1.map { |num| next_greater[num] }
end


nums1 = [2, 4]
nums2 = [1, 2, 3, 4]
puts next_greater_ele(nums1, nums2).inspect
