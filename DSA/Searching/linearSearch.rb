def linear_search(arr, target)
  arr.each_with_index do |element, index|
    return index if element == target
  end
  -1
end

array = [4, 2, 7, 1, 9]
puts linear_search(array, 2)
