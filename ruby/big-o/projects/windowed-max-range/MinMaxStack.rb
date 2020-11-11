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
    # create instasnce of metadata class, add that instance to the stack.
    # stack is not stack of numbers, it's a stack of instances of the metadata class
    # when yo upop the stack, just return the value of the metadata instance
    # do the min max computation whhen you push
  if @store.empty?
    metadata = MetaData.new(new_element, new_element, new_element)
    @store.push(metadata)
  else
    previous_metadata = @store.last
    new_minimum = previous_metadata.minimum < new_element ? previous_metadata.minimum : new_element
    new_maximum = previous_metadata.maximum > new_element ? previous_metadata.maximum : new_element
    metadata = MetaData.new(new_element, new_minimum, new_maximum)
    @store.push(metadata)
  end
end


class MetaData
  attr_reader :minimun, :maximum
  def initialize(new_element, minimum, maximum)
    @value = new_element
    @minimum = minimum
    @maximum = maximum
  end
  
    # peek at element, and compare its minimum and maximum, and if it exceeds it, you replace 
    # that minimum and maximun, if not, you copy over its minimum and maximum
  
end