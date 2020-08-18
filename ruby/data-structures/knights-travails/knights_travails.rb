class KnightPathFinder

  def self.valid_moves(position)
    possible_moves = []


    possible_moves

  end

  def initialize(start_position)
    @start_position = start_position
    @considered_positions = [start_position]

    build_move_tree
  end

  def build_move_tree(start_position)
    @root_node = PolyTreeNode.new(start_position)


  end

  def new_move_positions(position)
    unfiltered_moves = KnightPathFinder::valid_moves(position)
    
  end

  # def find_path(end_position)
  # end
  


  # def new_move_positions(position)
  #   valid_moves(position)
  # end
end

new = KnightPathFinder.new