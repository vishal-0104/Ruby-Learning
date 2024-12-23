def search2DMatrix(matrix,target)
  rows = matrix.length
  cols = matrix[0].length
  low = 0 
  high = rows * cols - 1
  while low <= high
    mid = (low + high)/2
    row_index = mid / cols
    col_index = mid % cols
    if matrix[row_index][col_index] == target
      return true
    elsif matrix[row_index][col_index] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return false
end

print "Enter the number of rows :- "
rows = gets.chomp.to_i
matrix = []

rows.times do 
  row = gets.chomp.split.map{|num| num.to_i}
  matrix << row 
end
print "Enter the target element :- "
target = gets.chomp.to_i
puts search2DMatrix(matrix,target)