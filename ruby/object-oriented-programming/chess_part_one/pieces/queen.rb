class Queen < Pieces
  include Slideable
  
  def symbol
    '♛'.colorize(color)
  end

  protected
  
  def move_directions
  end
end