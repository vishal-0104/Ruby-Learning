def bubble_sort(arr)
  n = arr.length
  (n - 1).times do
    (0...n - 1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  arr
end


array = [4, 2, 7, 1, 9]
puts bubble_sort(array).inspect
