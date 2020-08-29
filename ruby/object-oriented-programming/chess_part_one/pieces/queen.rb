require_relative '../piece.rb'
require_relative 'slideable'

class Queen < Piece
  include Slideable
  
  def symbol
    '♛'.colorize(color)
  end

  protected
  
  def move_directions
  end
end