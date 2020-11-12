class MetaData
  attr_reader :minimum, :maximum, :value
  def initialize(new_element, minimum, maximum)
    @value = new_element
    @minimum = minimum
    @maximum = maximum
  end
end

require_relative  "MyStack"

class MinMaxStack
  def initialize
    @store = []
  end

  def peek
    @store[-1]
  end

  def min
    unless @store.empty?
      peek.minimum  
    else
      nil
    end 
  end

  def max
    unless @store.empty?
      peek.maximum
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
    if removed_element.nil?
      nil
    else
      removed_element.value
    end
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
# a = MinMaxStack.new
# # puts a.empty? == true
# a.push(1)
# a.push(2)
# a.push(3)
# puts a.size == 3
# puts a.max == 3
# puts a.min == 1
# puts a.empty? == false
# puts a.size == 3
# puts a.pop
# puts a.max