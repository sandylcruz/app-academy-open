require_relative 'pieces/piece'
require_relative 'pieces/bishop'
require_relative 'pieces/king'
require_relative 'pieces/knight'
require_relative 'pieces/pawn'
require_relative 'pieces/queen'
require_relative 'pieces/rook'
require_relative 'pieces/null'
require_relative 'pieces/stepable'
require_relative 'pieces/slideable'

class Piece
  def initialize
    @color = symbol
    @board = board
    @position = []
  end

  def to_s
  end

  def empty?(position)
  end

  def valid_moves
  end

  def pos=(value)
  end

  def symbol
  end

  private

  def move_into_check?(end_position)
  end
end