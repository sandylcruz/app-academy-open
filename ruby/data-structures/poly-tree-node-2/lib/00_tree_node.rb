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

  # def bfs
  # end

end