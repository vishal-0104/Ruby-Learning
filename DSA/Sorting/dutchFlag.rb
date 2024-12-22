def sort_array(nums)
  low = 0
  mid = 0
  high = nums.length - 1


  while mid <= high
    case nums[mid]
    when 0
      nums[low], nums[mid] = nums[mid], nums[low]
      low += 1
      mid += 1
    when 1
      mid += 1
    when 2
      nums[mid], nums[high] = nums[high], nums[mid]
      high -= 1
    end
  end

  nums
end


array = [1, 0, 2, 1, 2, 0]
puts sort_array(array).inspect
