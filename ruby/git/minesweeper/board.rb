require_relative  'tile.rb'

class Board
  def initialize
    @grid = Array.new(9) { Array.new(9, "_") }
    @cursor_position = [4, 4]
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
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

  def mark_number(number)
    index1 = @cursor_position[0]
    index2 = @cursor_position[1]
    tile = @grid[index1][index2]
    tile.mark_number(number)
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

  def row
    @grid
  end

  def columns
    @grid.transpose
  end
end
board = Board.new
board.render