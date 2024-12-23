def rotate90Degrees(matrix)
  transposed_matrix = matrix.transpose
  transposed_matrix.map {|row| row.reverse}
end


print "Enter the number of rows :- "
rows = gets.chomp.to_i
matrix = []


rows.times do 
  row = gets.chomp.split.map{|num| num.to_i}
  matrix << row

end


rotated_matrix = rotate90Degrees(matrix)


rotated_matrix.each do |row|
  puts row.inspect
end