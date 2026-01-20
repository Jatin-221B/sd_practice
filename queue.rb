class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end

  def display
    puts " Queue elements are #{@queue}"
  end
end

queue = Queue.new
queue.enqueue(23)
queue.enqueue("hi")
queue.enqueue(4.90)
queue.display
queue.dequeue
queue.display