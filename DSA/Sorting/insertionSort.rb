def insertion_sort(array)
  for i in 1...(array.length)
      j = i
      while j > 0 
          if array[j-1] > array[j] 
              array[j-1], array[j] = array[j], array[j-1]
          else
              break
          end
          j -= 1 
      end
  end
  array
end


array = [4, 2, 7, 1, 9]
puts insertion_sort(array).inspect

