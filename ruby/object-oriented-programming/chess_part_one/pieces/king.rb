class King < Pieces
  include Stepable
  
  def symbol
    '♚'.colorize(color)
  end

  protected
  
  def move_directions
  end
end