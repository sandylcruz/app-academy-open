class KnightPathFinder

  #grid = Array.new(8) { Array.new(8) }
  def coordinate_in_range?(position)
    x = position[0]
    y = position[1]
    grid_size = 8

    is_x_within_bounds = x >= 0 && x <= (grid_size - 1)
    is_y_within_bounds = y >= 0 && y <= (grid_size - 1)

    return true if is_x_within_bounds && is_y_within_bounds
  end

  def self.valid_moves(position)
    possible_moves = []
    x = position[0]
    y = position[1]



    # minus_one
    # plus_one
    # minus_two
    # plus_two

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