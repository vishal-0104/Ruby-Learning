def merge_sort(arr)
  return arr if arr.length <=1

  mid = arr.length/2

  left  = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..])

  merge(left,right)
end


def merge(left , right)
  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end


array = [4, 2, 7, 1, 9]
puts merge_sort(array).inspect


=begin
Merge Two Sorted Arrays
Given two sorted arrays, merge them into one sorted array without using extra space.
Hint: Use the two-pointer technique.
=end


def merge_sorted_arrays(arr1, arr2)
  m, n = arr1.length, arr2.length
  i, j = 0, 0

  while i < m
    if arr1[i] > arr2[j]
      
      arr1[i], arr2[j] = arr2[j], arr1[i]
      
      arr2.sort!
    end
    i += 1
  end
  arr1 + arr2
end


arr1 = [1, 3, 5]
arr2 = [2, 4, 6]
puts merge_sorted_arrays(arr1, arr2).inspect
