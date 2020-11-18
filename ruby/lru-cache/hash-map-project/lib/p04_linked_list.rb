class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  include Enumerable
  
  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
    @tail.prev = @head
  end

  def empty?
    @head.next == @tail
  end

  def append(key, val)
    new_node = Node.new(key, val)
    current_last_node = @tail.prev
    current_last_node.next = new_node
    new_node.next = @tail
    new_node.prev = current_last_node
    @tail.prev = new_node
  end

  def first
    if empty?
      nil
    else
      @head.next
    end
  end

  def last
    @tail.prev
  end

  def each
    current_node = @head.next

    until current_node == @tail
      yield current_node
      current_node = current_node.next
    end
  end

  def update(key, val)
  end

  def get(key)
    return nil if !include?(key)
  end

  def remove(key)
  end

  def include?(key)

  end
  
  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end
  
  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
