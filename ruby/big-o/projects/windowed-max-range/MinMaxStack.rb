require_relative  "MyStack"

class MinMaxStack
  def initialize
    @store = MyStack.new
  end

  def peek
    @store.peek
  end

  def min
    @store.peek.min
  end

  def max
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
  
  def pop
    @store.pop
  end

  def push(new_element)
    if new_element > @current_maximum
      @current_maximum = new_element
    elsif new_element < @current_minimum
      @current_minimum = new_element
    end
    @store.push(new_element)
  end
end
a = MinMaxStack.new
puts a.min

class MetaData
  def initialize
    @value = 
    @minimum =
    @maximum =
    
    # peek at element, and compare its minimum and maximum, and if it exceeds it, you replace 
    # that minimum and maximun, if not, you copy over its minimum and maximum
  end
end