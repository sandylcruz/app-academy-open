class KnightPathFinder
  def initialize
    kpf = KnightPathFinder.new([0, 0])
    @grid = Array.new(8) { Array.new(8)}
    @considered_positions = [starting_position]
  end

  def self.root_node
    initial_position = 
  end

  def build_move_tree(start_position)
    queue = [start_position]
  end

  def self.root_nodeend
  end

  def find_path
  end
  
  def valid_moves(position)
  end

  def new_move_positions(position)
    valid_moves(position)
  end
end

new = KnightPathFinder.new