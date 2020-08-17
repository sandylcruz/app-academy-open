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
puts 

class Map
  def initialize
    @underlying_array = []
  end

  def set(key, value)
    pair_index = @underlying_array.index { |pair| pair[0] == key }
    if pair_index
      @underlying_array[pair_index][1] = value
    else
      @underlying_array.push([key, value])
    end
    nil
  end

  def get(key)
    entry = @underlying_array.find do |entry| 
      entry[0] == key
    end
    return nil if entry.nil?
    entry[1]
  end

  def delete(key)
    value = get(key)
    @underlying_array.reject! { |pair| pair[0] == key}
    value
  end

  def show
    @underlying_array
  end
end
puts "Map class tests:"
my_map = Map.new
puts my_map.set('cat', 'callie') == nil
puts my_map.set('kitten', 'squeaky') == nil

puts my_map.get('cat') == 'callie'
puts my_map.get('phoenix') == nil
puts my_map.show == [["cat", "callie"], ["kitten", "squeaky"]]
puts my_map.set('kitten', 'phoenix') == nil
puts my_map.get('kitten') == 'phoenix'
puts my_map.delete('cat') == 'callie'
print my_map.show == [["kitten", "phoenix"]]