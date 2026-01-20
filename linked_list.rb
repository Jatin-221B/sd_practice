class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class Linkedlist
  
  def initialize
    @head = nil
  end

  def insert(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else  
      current = @head
      while current.next != nil
        current = current.next
      end
      current.next = new_node
    end
  end

def delete(data)
  return if @head.nil?

  if @head.data == data
    @head = @head.next
  else
    current = @head
    while current.next.data != data
      current = current.next
    end
    current.next = current.next.next
  end
end

def search(data)
  return if @head.nil?
  
  temp = @head
  while temp
    return true if temp.data == data
    temp = temp.next
  end
  false
end
  
def display
  temp = @head
  while temp
    print "#{temp.data}  "
    temp = temp.next
  end
end

end

list = Linkedlist.new
list.insert(23)
list.insert(4)
list.insert(5)
list.insert("hi")
list.display
list.delete(5)
puts list.search("hi")
list.display
