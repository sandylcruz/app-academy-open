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
    # add_piece(Rook.new(self, :black), [0, 0])
    # add_piece(Knight.new(self, :black), [0, 1])
    # add_piece(Bishop.new(self, :black), [0, 2])
    add_piece(Queen.new(self, :black), [0, 3])
    # add_piece(King.new(self, :black), [0, 4])
    # add_piece(Bishop.new(self, :black), [0, 5])
    # add_piece(Knight.new(self, :black), [0, 6])
    # add_piece(Rook.new(self, :black), [0, 7])
    # (0..7).each do |num|
    #   add_piece(Pawn.new(self, :black), [1, num])
    #   add_piece(Pawn.new(self, :white), [6, num])
    # end
    # add_piece(Rook.new(self, :white), [7, 0])
    # add_piece(Knight.new(self, :white), [7, 1])
    # add_piece(Bishop.new(self, :white), [7, 2])
    add_piece(Queen.new(self, :white), [7, 3])
    # add_piece(King.new(self, :white), [7, 4])
    # add_piece(Bishop.new(self, :white), [7, 5])
    # add_piece(Knight.new(self, :white), [7, 6])
    # add_piece(Rook.new(self, :white), [7, 7])
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

  # Should we have color passed in? Diagram shows color, 
  # but instructions don't
  
  def move_piece(start_position, end_position)
    raise "Invalid position" unless valid_position?(start_position) && valid_position?(end_position)
    piece = self.[](start_position)
    raise "There is no piece at start position" if piece == NullPiece
    raise "Piece cannot move that way" if piece.valid_moves.include?(end_position) 
  end

  def valid_position?(position)
    x, y = position
    x.between?(0, 7) && y.between?(0, 7)
  end

  def add_piece(piece, position)
    self[position] = piece
    piece.pos = position
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
# b.move_piece([1, 1], [22, 0])
# b.move_piece([1, 1], [5, 0])
queen = b[[7, 3]]
print queen.moves