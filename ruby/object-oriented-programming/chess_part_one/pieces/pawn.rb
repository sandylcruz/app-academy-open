require_relative '../piece.rb'

class Pawn < Piece
  def symbol
    '♟'.colorize(color)
  end

  def move_directions
    forward_steps + side_attacks
  end

  private
  
  def at_start_row?

  end

  def forward_direction
  end

  def forward_steps

  end

  def side_attacks
  end
end