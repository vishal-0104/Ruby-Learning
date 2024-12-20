class Node
  attr_accessor :value , :nextNode
  def initialize(value)
    @value = value
    @nextNode = nil
  end
end


class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end


  def add_at_head(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      while current.nextNode != nil
        current = current.nextNode
    end
    current.nextNode = Node.new(value)
    end
  end


  def add_at_tail(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      current = current.nextNode while current.nextNode
      current.nextNode = Node.new(value)
    end
  end


  def remove(value)
    current = @head
    if current.value = value
      @head = current.nextNode
    else
      while current.nextNode != nil && current.nextNode.value != value
        current = current.nextNode
      end
      if current.nextNode !=nil
        current.nextNode = current.nextNode.nextNode
      end
    end
  end


  def search(value)
    current = @head
    index = 0
    while current
      return index if current.value == value
      current = current.nextNode
      index += 1
    end
    -1 
  end


  def length
    count = 0
    current = @head
    while current
      count += 1
      current = current.nextNode
    end
    count
  end


  def reverse
    prev = nil
    current = @head
    while current
      next_node = current.nextNode
      current.nextNode = prev
      prev = current
      current = next_node
    end
    @head = prev
  end


  def display
    current = @head
    while current != nil
      print "#{current.value} -> "
      current = current.nextNode
    end
    puts "nil"
  end
end


ll = LinkedList.new
ll.add_at_head(2)
ll.add_at_head(3)
ll.add_at_head(4)
ll.add_at_tail(5)

ll.display
ll.remove(3)
ll.display
ll.reverse
ll.display
puts "#{ll.search(3)}"
puts "#{ll.length}"