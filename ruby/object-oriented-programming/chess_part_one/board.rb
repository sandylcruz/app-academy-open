require 'colorize'
require './pieces/null_piece.rb'
require './pieces/bishop.rb'
require './pieces/king.rb'
require './pieces/knight.rb'
require './pieces/null_piece.rb'
require './pieces/pawn.rb'
require './pieces/queen.rb'
require './pieces/rook.rb'

class Board
  attr_reader :rows
  attr_reader :sentinal

  def initialize
    @sentinel = NullPiece.instance
    @rows = Array.new(8) { Array.new(8) { @sentinel } }  
    add_piece(Rook.new(:black), [0, 0])
    add_piece(Knight.new(:black), [0, 1])
    add_piece(Bishop.new(:black), [0, 2])
    add_piece(Queen.new(:black), [0, 3])
    add_piece(King.new(:black), [0, 4])
    add_piece(Bishop.new(:black), [0, 5])
    add_piece(Knight.new(:black), [0, 6])
    add_piece(Rook.new(:black), [0, 7])
    (0..7).each do |num|
      add_piece(Pawn.new(:black), [1, num])
      add_piece(Pawn.new(:white), [6, num])
    end
    add_piece(Rook.new(:white), [7, 0])
    add_piece(Knight.new(:white), [7, 1])
    add_piece(Bishop.new(:white), [7, 2])
    add_piece(Queen.new(:white), [7, 3])
    add_piece(King.new(:white), [7, 4])
    add_piece(Bishop.new(:white), [7, 5])
    add_piece(Knight.new(:white), [7, 6])
    add_piece(Rook.new(:white), [7, 7])
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
    raise "There is no piece at start position" if start_position.nil?
    piece = self[start_position]
    raise "This is nil" if end_position.nil?
    raise "Piece cannot move that way" if piece.moves.include?(end_position)
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

  def empty?(position)
    @rows[position].empty?
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
b.move_piece("black", [1, 1], [22, 0])