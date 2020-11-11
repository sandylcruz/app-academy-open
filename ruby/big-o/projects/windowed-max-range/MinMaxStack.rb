class MetaData
  attr_reader :minimun, :maximum
  def initialize(new_element, minimum, maximum)
    @value = new_element
    @minimum = minimum
    @maximum = maximum
  end
end

require_relative  "MyStack"
require_relative  "MetaData"

class MinMaxStack
  def initialize
    @store = MyStack.new
  end

  def peek
    @store.peek
  end

  def min
    unless @store.empty?
      peek.min   
    else
      nil
    end 
  end

  def max
    unless @store.empty?
      peek.max   
    else
      nil
    end 
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
  
  def pop
    removed_element = @store.pop
    removed_element.value
  end

  def push(new_element)
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
end
a = MinMaxStack.new
a.push(1)
puts a.push(2)

