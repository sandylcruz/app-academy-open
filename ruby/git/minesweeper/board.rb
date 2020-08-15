require_relative  'tile.rb'

class Board
  def initialize(grid_size, num_bombs)
    @grid_size = grid_size
    @num_bombs = num_bombs
    generate_grid!(grid_size)
    @cursor_position = [2, 2]
  end
    
  def [](position)
    row = position[0]
    column = position[1]
    @board[row][column]
  end

  def generate_grid!(grid_size)
    @grid = Array.new(grid_size) do
      Array.new(grid_size) do 
        Tile.new(false, false)
      end
    end
    place_bombs
    set_all_neighbor_bomb_count!
  end

  def set_all_neighbor_bomb_count!
    @grid.each_with_index do |row, i|
      row.each_with_index do |tile, j|
        if !tile.is_bomb
          number_of_neighbor_bombs = neighbor_bomb_count(i, j)
          tile.set_individual_tile_bomb_count!(number_of_neighbor_bombs)
        end
      end
    end
  end

  def generate_all_coordinates
    coordinate_pairs = []
    i = 0

    while i < @grid_size
      j = 0
      while j < @grid_size
        coordinate_pairs << [i, j]
        j += 1
      end
      i += 1
    end
    coordinate_pairs
  end

  def generate_bombs(num_bombs)
    generate_all_coordinates.sample(num_bombs)
  end

  def place_bombs
    locations = generate_bombs(@num_bombs)
    locations.each do |location|
      x = location[0]
      y = location[1]
      tile = @grid[x][y]
      tile.flag_tile_as_bomb!
    end
    @grid
  end

  def neighbors(index1, index2)
    numbers = []
    x = index1
    y = index2
    no_duplicates = x <= @grid_size && y <= @grid_size

    if no_duplicates
      (x - 1..x + 1).each do |i|
        (y - 1..y + 1).each do |j|
          unless x == i && y == j
            is_i_in_bounds = i >= 0 && i < @grid_size
            is_j_in_bounds = j >= 0 && j < @grid_size
            if is_i_in_bounds && is_j_in_bounds
              numbers << [i, j]
            end
          end
        end
      end
    end
    numbers
  end

  def neighbor_bomb_count(index1, index2)
    bomb_count = 0
    neighbor_coordinates = neighbors(index1, index2)

    neighbor_coordinates.each do |neighbor_coordinate|

      x = neighbor_coordinate[0]
      y = neighbor_coordinate[1]
      neighbor_tile = @grid[x][y]
      if neighbor_tile.is_bomb
        bomb_count += 1
      end
    end

    bomb_count
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
    end
  end

  def expand!(coordinate_pair)
    x = coordinate_pair[0]
    y = coordinate_pair[1]
    tile = @grid[x][y]

    if tile.is_bomb
      return true
    else
      tile.reveal!
      return false if tile.bomb_count > 0
      coordinates_to_check = neighbors(x, y)
      
      until coordinates_to_check.empty?
        coordinate_to_check = coordinates_to_check.shift
        x = coordinate_to_check[0]
        y = coordinate_to_check[1]
        tile = @grid[x][y]
    
        unless tile.is_bomb
          tile.reveal!
          if tile.bomb_count == 0
            next_neighbors = neighbors(x, y).select do |coordinate_pair|
              x = coordinate_pair[0]
              y = coordinate_pair[1]
              tile = @grid[x][y]
              !tile.revealed
            end
            coordinates_to_check += next_neighbors
          end
        end
      end

      return false
    end
  end

  def won?
    total_num_tiles = (@grid_size ** 2)
    target_num_tiles = total_num_tiles - @num_bombs

    count = 0
    @grid.each do |row|
      row.each do |tile|
        if tile.revealed
          count += 1
        end
      end
    end

    count == target_num_tiles
  end

  def reveal_every_tile!
    @grid.each do |row|
      row.each do |tile|
        tile.reveal!
      end
    end
  end

  def move_left!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if j == 0
    @cursor_position = [i, j - 1]
  end

  def move_right!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if j == 8
    @cursor_position = [i, j + 1]
  end

  def move_up!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if i == 0
    @cursor_position = [i - 1, j]
  end

  def move_down!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if i == 8
    @cursor_position = [i + 1, j]
  end

  # def mark_number(number)
  #   index1 = @cursor_position[0]
  #   index2 = @cursor_position[1]
  #   tile = @grid[index1][index2]
  #   tile.mark_number(number)
  # end

  # def render(revealed = false)

  # end

  def row
    @board
  end

  def columns
    @board.transpose
  end
end
# board = Board.new(10, 30)

# # board.reveal_every_tile!
# # board.print
# puts board.expand!([0, 0])
# board.print