class Stack
  def initialize
    @stack = []
  end

  def push(item)
    
    @stack.push(item)

  end

  def pop
    
    @stack.pop
  
  end

  def peek
    
    puts @stack.last

  end

  def isempty
    
    puts @stack.empty?

  end

  def display
    
    puts "Stack elements are : #{@stack}"

  end
end

stack = Stack.new
stack.push(3)
stack.push("hello")
stack.push(3.14)
stack.display
stack.pop
stack.pop
stack.display
stack.peek
stack.isempty