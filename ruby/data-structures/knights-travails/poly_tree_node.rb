class PolyTreeNode
  attr_reader :value, :parent,  :children

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
    unless @parent.nil?
      @parent.children.delete(self)
    end

    @parent = new_parent
    return nil if new_parent.nil?
   
    if !new_parent.children.include?(self)
      new_parent.children << self  
    end
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise "This is not a child" if !self.children.include?(child_node)
    child_node.parent = nil
  end

  def dfs(target_value)
    return self if target_value == @value

    children.each do |child|
      response = child.dfs(target_value)
      return response unless response.nil?
    end
    nil
  end

  def bfs(target_value)
    queue = [self]
    return self if target_value == @value

    until queue.empty?
      current_ele = queue.shift
      return current_ele if current_ele.value == target_value
      queue += current_ele.children
    end
    nil
  end
end