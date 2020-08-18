class KnightPathFinder

  def initialize(start_position)
    @start_position = start_position
    @considered_positions = [start_position]

    build_move_Tree
  end

  def build_move_tree(start_position)
    self.root_node = PolyTreeNode.new(start_position)

    queue = [start_position]
    until queue.empty?
      current_ele = queue.shift
      return current_ele if current_ele.value == target_value
    end
  end

  # def find_path(end_position)
  # end
  
  # def self.valid_moves(position)
  # end

  # def new_move_positions(position)
  #   valid_moves(position)
  # end
end

new = KnightPathFinder.new