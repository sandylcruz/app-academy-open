require_relative  "MinMaxStack"

class MinMaxStackQueue
  def initialize
    @first_stack = MinMaxStack.new
    @second_stack = MinMaxStack.new
  end

  def size
    @first_stack.size + @second_stack.size
  end

  def empty?
    @first_stack.empty? && @second_stack.empty?
  end

  def dequeue
    if @second_stack.empty?
      until @first_stack.empty?
        popped_off = @first_stack.pop
        @second_stack.push(popped_off)
      end
      @second_stack.pop
    else
      @second_stack.pop
    end
  end

  def enqueue(new_element)
    @first_stack.push(new_element)
  end

  def max
    first = @first_stack.max
    second = @second_stack.max

    if first.nil? && second.nil?
      nil
    elsif first.nil?
      second
    elsif second.nil?
      first
    else
      [first, second].max
    end
  end

  def min
    first = @first_stack.min
    second = @second_stack.min

    if first.nil? && second.nil?
      nil
    elsif first.nil?
      second
    elsif second.nil?
      first
    else
      [first, second].min
    end
  end
end
# a = MinMaxStackQueue.new
# a.enqueue(1)
# a.enqueue(-1)
# a.enqueue(50)
# a.enqueue(2)
# a.enqueue(3)
# a.dequeue
# puts a.max