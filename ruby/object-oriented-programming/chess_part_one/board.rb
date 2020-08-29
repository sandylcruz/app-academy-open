require 'colorize'

class Board
  def initialize
    # @rows = []
    generate_grid!
  end

  def generate_grid!
    @grid = Array.new(8) do 
      Array.new(8)
    end
  end

  def [](position)
    row = position[0]
    column = position[1]
    @grid[row][column]
  end

  def []=(position, value)
    row = position[0]
    column = position[1]
    @grid[row][column] = value
  end

  def render
    @grid.each_with_index do |row, row_index|
      row_string = " "
      row.each_with_index do |cell, cell_index|
        if row_index.even? && cell_index.even?
          row_string += "  ".on_red
        elsif row_index.even? && cell_index.odd?
          row_string += "  ".on_blue
        elsif row_index.odd? && cell_index.even?
          row_string += "  ".on_blue
        elsif row_index.odd? && cell_index.odd?
          row_string += "  ".on_red
        end
      end
      puts row_string
    end
  end

  def move_piece(color, start_position, end_position)
  end

  def coordinate_in_range?(position)
    row = position[0]
    column = position[1]
    grid_size = 8

    is_row_within_bounds = row >= 0 && row <= (grid_size - 1)
    is_column_within_bounds = column >= 0 && column <= (grid_size - 1)

    is_row_within_bounds && is_column_within_bounds
  end

  def valid_position?(position)

  end

  def add_piece(piece, position)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_position, end_position)
  end
end
b = Board.new
b.render