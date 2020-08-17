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

  def parent=(passed_node)
    @parent = passed_node
    return nil if passed_node.nil?

    if !passed_node.children.include?(self)
      passed_node.children << self
    end
  end

  def add_child
    child.parent = self
  end

  def remove_child
    child.parent = nil
  end
end

class Searchable
  def dfs
  end

  def bfs
  end
end