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
    previous_node = @prev
    next_node = @next
    previous_node.next = next_node unless previous_node.nil?
    next_node.prev = previous_node unless next_node.nil?
    @next = nil
    @prev = nil
    self
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

    new_node
  end

  def first
    empty? ? nil : @head.next
  end

  def last
    empty? ? nil : @tail.prev
  end

  def shift
    return nil if empty?
    
    first_node = first
    first_node.remove

    first_node
  end

  def each(&prc)
    current_node = @head.next

    until current_node == @tail
      prc.call(current_node) 
      current_node = current_node.next
    end
  end

  def update(key, val)
    each do |node|
      if node.key == key
        node.val = val
        return #this assumes key only shows up once in a list
      end
    end
  end

  def get(key)
    each do |node|
      return node.val if node.key == key
    end

    nil
  end

  def remove(key)
    each do |node|
      if node.key == key
        node.remove
        return
      end
    end
  end

  def include?(key)
    each do |node|
      return true if node.key == key
    end
    false
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
