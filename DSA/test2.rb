=begin

Given a grid of size n * m and robot is paced at n-1 and m-1 also given a string at str only the character of U, D , L , R representing the moves of the robot is
going to perform task is to find robot will be safe at the end of the last move.
consider the robert is facing up from start.

=end


def is_robot_safe(n, m, moves)

  x = n - 1
  y = m - 1

 
  directions = {
    'U' => [-1, 0], 
    'D' => [1, 0], 
    'L' => [0, -1], 
    'R' => [0, 1]
  }

  
  moves.each_char do |move|
    dx, dy = directions[move]
    x += dx
    y += dy
    
    return false if x < 0 || x >= n || y < 0 || y >= m
  end

  
  [x,y]
end


puts "number of rows"
n = gets.chomp.to_i

puts "number of cols"
m = gets.chomp.to_i

puts "enter the movement"
moves = gets.chomp 

result = is_robot_safe(n, m, moves)

if result
  puts "finally robot at #{result} position."
else
  puts "The robot is not safe."
end









