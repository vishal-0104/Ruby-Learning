def binary_search(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  -1
end

array = [1, 2, 4, 7, 9]
puts binary_search(array, 7)


=begin
  1. Questions
Find First and Last Position of an Element in a Sorted Array
Given a sorted array, find the first and last position of a given element. Return [-1, -1] if the element is not present.
Hint: Use Binary Search for optimal performance.

=end

def search(arr,target)
  def first_idx(arr,target)
    left, right = 0, arr.length-1

    while left <= right
      mid = left + (right-left)/2

      arr[mid] >= target ? right = mid - 1 : left = mid + 1
      end
      left
  end


  def last_idx(arr,target)
    left, right = 0, arr.length-1

    while left <=right
      mid = left + (right-left)/2
      arr[mid] <= target ? left = mid + 1 : right = mid - 1
    end
    right
  end

  left = first_idx(arr,target)
  right = last_idx(arr,target)

  left <= right && arr[left] == target ? [left, right] : [-1, -1]
end

array1 = [1,2,3,3,3,4,5,6]
puts search(array1,3).inspect


=begin
Find the Peak Element
A peak element is an element that is greater than its neighbors. Find the index of any peak element in an array.
Hint: Use Binary Search for a logarithmic solution.
Example: [1, 2, 3, 1] → Output: 2 (index of 3).
=end

def peak_element(arr)
  left, right = 0, arr.length - 1

  while left <= right
    mid = left + (right - left) / 2

    if (mid == 0 || arr[mid] > arr[mid - 1]) && 
       (mid == arr.length - 1 || arr[mid] > arr[mid + 1])
      return mid
    elsif arr[mid] < arr.length - 1 && arr[mid] < arr[mid + 1]
      left = mid + 1
    else
      right = mid - 1
    end
  end
end

array2 = [1,2,1,3,5,6,4]
puts peak_element(array2)
