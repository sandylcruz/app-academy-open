require_relative  'tile.rb'

class Board
  def initialize(grid_size, num_bombs)
    @grid_size = grid_size
    @num_bombs = num_bombs
    @grid = generate_grid(grid_size)
  end
    
  def [](position)
    row = position[0]
    column = position[1]
    @board[row][column]
  end

  def generate_grid(grid_size)
    Array.new(grid_size) do
      Array.new(grid_size) do 
        Tile.new(false, true)
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

  def neighbors(position)
    x = position[0]
    y = position[1]
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
    end
  end

  def won?
  end

  def lost?
  end

  def reveal #show entire board after losing
  end

  # def move_left!
  #   i = @cursor_position[0]
  #   j = @cursor_position[1]

  #   return if j == 0
  #   @cursor_position = [i, j - 1]
  # end

  # def move_right!
  #   i = @cursor_position[0]
  #   j = @cursor_position[1]

  #   return if j == 8
  #   @cursor_position = [i, j + 1]
  # end

  # def move_up!
  #   i = @cursor_position[0]
  #   j = @cursor_position[1]

  #   return if i == 0
  #   @cursor_position = [i - 1, j]
  # end

  # def move_down!
  #   i = @cursor_position[0]
  #   j = @cursor_position[1]

  #   return if i == 8
  #   @cursor_position = [i + 1, j]
  # end

  # def mark_number(number)
  #   index1 = @cursor_position[0]
  #   index2 = @cursor_position[1]
  #   tile = @grid[index1][index2]
  #   tile.mark_number(number)
  # end

  # def render(revealed = false)

  # end

  # def row
  #   @board
  # end

  # def columns
  #   @board.transpose
  # end
end
board = Board.new(10, 5)
board.generate_all_coordinates
board.generate_bombs(5)
board.place_bombs
board.print