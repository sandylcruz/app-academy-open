class Knight < Pieces
  include Stepable
  
  def symbol
    '♞'.colorize(color)
  end

  protected
  
  def move_directions
  end
end