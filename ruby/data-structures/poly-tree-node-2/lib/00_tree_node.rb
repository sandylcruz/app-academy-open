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
   
    new_parent.children << self  
  end

  # def add_child(child_node)
  # end

  # def delete_child(child_node)
  # end

  # def bfs
  # end

end