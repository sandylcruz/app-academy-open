class PolyTreeNode
  attr_reader :value, :parent, :children

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(node)
    @parent = node
  end

  def add_child
  end

  def remove_child
  end
end

class Searchable
  def dfs
  end

  def bfs
  end
end