def queue(arr)
  stack1 = []
  stack2 = []

  arr.each do |i|
    stack1.push(i)
  end
  
  while !stack1.empty?
    stack2.push(stack1.pop)
  end

  while !stack2.empty?
    print "#{stack2.pop} "
  end
end

array = [1,2,3,4,5]
puts queue(array)