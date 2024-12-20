def quick_sort(arr)
  return arr if arr.length <=1

  pivot = arr.delete_at(arr.length/2)
  left, right = arr.partition {|x| x <= pivot}

  quick_sort(left) + [pivot] + quick_sort(right)
end

array = [4, 2, 7, 1, 9]
puts quick_sort(array).inspect