require_relative 'piece'
require_relative 'slideable'

class Bishop < Pieces
  include Slideable
  
  def symbol
    '♝'.colorize(color)
  end

  protected
  
  def move_directions
  end
end