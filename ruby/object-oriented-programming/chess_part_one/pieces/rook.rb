require_relative 'piece'
require_relative 'slideable'

class Rook < Pieces
  include Slideable
  
  def symbol
    '♜'.colorize(color)
  end

  protected
  
  def move_directions
  end
end