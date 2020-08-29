require 'colorize'
require './pieces/null_piece.rb'
require './pieces/knight.rb'

class Board
  attr_reader :rows
  attr_reader :sentinal

  def initialize
    @sentinel = NullPiece.instance
    @rows = Array.new(8) { Array.new(8) { @sentinel } }  
    add_piece(Knight.new, [0, 0])
    add_piece()
  end

  def [](position)
    row = position[0]
    column = position[1]
    @rows[row][column]
  end

  def []=(position, value)
    row = position[0]
    column = position[1]
    @rows[row][column] = value
  end

  def move_piece(color, start_position, end_position)
  end

  def valid_position?(position)
    row = position[0]
    column = position[1]
    grid_size = 8

    is_row_within_bounds = row >= 0 && row <= (grid_size - 1)
    is_column_within_bounds = column >= 0 && column <= (grid_size - 1)

    is_row_within_bounds && is_column_within_bounds
  end

  def add_piece(piece, position)
    self[position] = piece
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
