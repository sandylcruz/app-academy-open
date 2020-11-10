require_relative 'MyStack'

class StackQueue
  def initialize
    @first_stack = MyStack.new
    @second_stack = MyStack.new
  end

  def size
    @first_stack.size + @second_stack
  end

  def empty?
    @first_stack.empty? && @second_stack.empty?
  end

  def enqueue(new_element)
    @first_stack.push(new_element)
  end

  def dequeue
    if !@second_stack.empty?
      @second_stack.pop
    else
      @second_stack.push(@first_stack.pop)
    end
  end
end
