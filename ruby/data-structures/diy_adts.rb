class Stack
   # create ivar to store stack here!
  def initialize
    @stack = []
  end

  # adds an element to the stack
  def push(el)
    @stack << el
    el
  end

  # removes one element from the stack
  def pop
    @stack.pop
  end

  # returns, but doesn't remove, the top element in the stack
  def peek
    return @stack[-1]
  end
end
stack = Stack.new
puts stack.peek == nil
puts stack.push(1) == 1
puts stack.push(2) == 2
puts stack.push(3) == 3
puts stack.peek == 3
puts stack.pop == 3
puts stack.peek == 2

class Queue
  def enqueue(el)
  end

  def dequeue
  end

  def peek
  end
end

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