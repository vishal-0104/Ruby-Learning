# sort an array of int such that all even no. before all odd no. mainataing relative order


puts "Enter the length of array"
n = gets.chomp.to_i


puts "Enter the element of array"
arr = gets.chomp.split.map(&:to_i)


def even_odd(arr)
  even, odd = arr.partition {|i| i.even?}

  ans = []
  i,j = 0,0

  while i < even.size || j < odd.size
    ans << even[i] if i < even.size
    i += 1

    ans << odd[j] if j < odd.size
    j += 1
  end
  ans
end


puts even_odd(arr).inspect

