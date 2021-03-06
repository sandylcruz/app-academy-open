class PolyTreeNode
  attr_reader :value, :parent, :children

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end
  # 1) Go to parent @parent
  # 2) Remove self from parent's children @parent.children
  # 3) Reassign parent to new parent @parent = new_parent
  # 4) Push in self's children to new_parent

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
    if !self.children.include?(child_node)
      raise "This is not a child"
    end

    child_node.parent = nil
  end

  def dfs(target_value)
    return self if target_value == @value

    children.each do |child|
      response = child.dfs(target_value)
      unless response.nil?
        return response
      end
    end
    
    nil
  end

  def bfs(target_value)
    queue = [self]

    until queue.empty?
      current_element = queue.shift
      return current_element if current_element.value == target_value
      queue += current_element.children
    end

    nil
  end
end