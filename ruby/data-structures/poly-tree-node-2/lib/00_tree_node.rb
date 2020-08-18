class PolyTreeNode
  attr_reader :value, :parent,  :children

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end

  # go to parent
  # delete self from @parent
  # reassign @parent to new_parent
  # add self to new_parent's children

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
  
  # return nil or an instance of hte polytreenode class
  # def dfs(target_value)
  #   return self if target_value == value

  #   children.each do |child|
  #     response = child.dfs(target_value)
  #     unless response.nil?
  #       return response
  #     end
  #   end
  #   nil
  # end

  # def bfs(target_value)
  #   queue = [self]

  #   until queue.empty?
  #     current_element = queue.shift
  #     return current_element if current_element.value == target_value
  #     queue += current_element.children
  #   end
  #   nil
  # end

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
    until queue.empty?
      current_element = queue.shift
      return current_element if current_element.value == target_value
      queue += current_element.children
    end
    nil
  end
end