require_relative '../piece.rb'
require_relative 'slideable'

class Bishop < Piece
  include Slideable
  
  def symbol
    '♝'.colorize(color)
  end

  protected
  
  def move_directions
    Slideable::DIAGONAL_DIRS
  end
end