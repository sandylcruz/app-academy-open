class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
    el
  end

  def pop
    @stack.pop
  end

  def peek
    return @stack[-1]
  end
end
puts "Stack tests"
stack = Stack.new
puts stack.peek == nil
puts stack.push(1) == 1
puts stack.push(2) == 2
puts stack.push(3) == 3
puts stack.peek == 3
puts stack.pop == 3
puts stack.peek == 2
puts 

class Queue
  def initialize
    @stack = []
  end

  def enqueue(el)
    @stack.push(el)
    el
  end

  def dequeue
    @stack.pop
  end

  def peek
    @stack[-1]
  end
end
puts "Queue tests:"
queue = Queue.new
puts queue.enqueue(1) == 1
puts queue.enqueue(2) == 2
puts queue.enqueue(3) == 3
puts queue.dequeue == 3
puts queue.peek == 2

def Map
  def set(key, value)
  end

  def get(key)
  end

  def delete(key)
  end

  def show
  end
end