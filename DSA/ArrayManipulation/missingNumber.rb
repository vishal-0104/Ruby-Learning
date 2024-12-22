def missing_number(arr)
  n = arr.length
  arr_sum = n * (n + 1) / 2
  total_sum = arr.sum
  arr_sum - total_sum
end


array = [3, 0, 1]
puts missing_number(array)
