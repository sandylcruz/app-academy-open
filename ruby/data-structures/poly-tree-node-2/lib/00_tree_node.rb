class PolyTreeNode
  def initialize
    @value = value
    @parent = nil
    @children = []
  end

  # go to parent
  # delete self's children from @parent
  # reassign @parent to new_parent
  # add self's children to new_parent's children

  # def parent=(new_parent)
  #   @parent.children.delete(self)
  #   @parent = new_parent
    
  # end

  # def add_child(child_node)
  # end

  # def delete_child(child_node)
  # end

  # def bfs
  # end

end