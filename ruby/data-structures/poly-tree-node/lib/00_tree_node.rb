class PolyTreeNode
  attr_reader :value, :parent, :children

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent)
    @parent = parent
    # self.parent._children << self
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