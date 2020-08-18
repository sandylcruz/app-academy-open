require_relative "poly_tree_node"

class KnightPathFinder
  def self.coordinate_in_range?(position)
    x = position[0]
    y = position[1]
    grid_size = 8

    is_x_within_bounds = x >= 0 && x <= (grid_size - 1)
    is_y_within_bounds = y >= 0 && y <= (grid_size - 1)

    is_x_within_bounds && is_y_within_bounds
  end

  def self.valid_moves(position)
    possible_moves = []
    x = position[0]
    y = position[1]
 
    possible_positions = [ 
      [x - 2, y - 1],
      [x - 2, y + 1],
      [x - 1, y - 2],
      [x - 1, y + 2],
      [x + 1, y - 2],
      [x + 1, y + 2],
      [x + 2, y - 1],
      [x + 2, y + 1]
    ]
    
    possible_positions.each do |possible_position|
      if coordinate_in_range?(possible_position)
        possible_moves << possible_position
      end
    end

    possible_moves
  end
    
  def initialize(start_position)
    @start_position = start_position
    @considered_positions = [start_position]

    # build_move_tree
  end

  def new_move_positions(position)
    unfiltered_moves = KnightPathFinder::valid_moves(position)

    unfiltered_moves.each do |unfiltered_move|
      if !@considered_positions.include?(unfiltered_move)
        @considered_positions << unfiltered_move
      end
    end
    
    @considered_positions
  end

  def build_move_tree(start_position)
    node = PolyTreeNode.new(start_position)
    root_node = node
    
    #array of polytreenode instances
    queue = [root_node]
    
    until queue.empty?
      current_node = queue.shift
      current_coordinate = current_node.
      queue << current_node.children
    end
  end

  
  # def find_path(end_position)
  # end
  


  # def new_move_positions(position)
  #   valid_moves(position)
  # end
end
a = KnightPathFinder.new([4, 4])
# print KnightPathFinder::valid_moves([7,7])
# print KnightPathFinder::valid_moves([0, 0])
# print KnightPathFinder::valid_moves([0, 7])
# print KnightPathFinder::valid_moves([7,0])
print a.new_move_positions([4, 4])