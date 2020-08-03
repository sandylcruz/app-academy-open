require_relative 'tile.rb'

class Board
  def initialize(grid)
    @grid = grid
    @cursor_position = [5, 3]
  end
  #read file
  #take contents, map contents into 2d grid of tile instances
  def self.from_file #factory method. class method that will return instance of own class
    file = File.open("./puzzles/sudoku1.txt")
    lines = file.readlines.map(&:chomp)
    grid = []

    lines.each do |line|
      row = []

      line.each_char do |char|
        value = char.to_i
        given = value > 0
        tile = Tile.new(value, given)
        row << tile
      end

      grid << row
    end

    board = Board.new(grid)
    board
  end

  def render
    system("clear")

    @grid.each_with_index do |row, x|
      row.each_with_index do |tile, y|
        current_position = [x, y]
        cursor_position_equals_current_position = current_position == @cursor_position
        if cursor_position_equals_current_position
          print tile.as_cursor_string
        else
          print tile
        end

        if y < row.length - 1
          print ' '
        end
      end
      print "\n"
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

  def row
  end

  def column
  end

  def square
  end


  def row_solved?
  end

  def column_solved?
  end

  def square_solved?
  end

  def solved?
  end

end
