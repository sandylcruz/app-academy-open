class MyQueue
  def initialize
    @store = []
  end

  def enqueue(new_element)
    @store.push(new_element)
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.first
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end