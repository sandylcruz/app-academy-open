class PolyTreeNode
  attr_reader :parent, :value, :children
  def initialize(parent, value, children)
    @parent = parent
    @value = value
    children = []
  end

    # look up current_parent
    # remove children from current_parent
    # reassign parent to new_parent
    # add self to new_parent
    # add children to new_parent's children

  def parent=(new_parent)
    return @parent if new_parent.nil?

    @parent.children.delete(self)
    @parent = new_parent

    children.each do |child|
      new_parent.children << child
    end
    nil
  end

  def add(child)
  end

  def add_child(child)
  end

  def delete_child(child)
  end

  def bfs(target_value)
  end

end

