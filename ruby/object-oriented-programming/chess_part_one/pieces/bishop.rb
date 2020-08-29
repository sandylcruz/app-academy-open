require_relative 'piece'

class Bishop < Pieces
  include Slideable
  
  def symbol
    '♝'.colorize(color)
  end

  protected
  
  def move_directions
  end
end