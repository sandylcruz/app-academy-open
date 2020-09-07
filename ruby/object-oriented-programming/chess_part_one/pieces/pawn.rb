require_relative '../piece.rb'

class Pawn < Piece
  def symbol
    '♟'.colorize(color)
  end

  def move_directions
    if at_start_row?
      
    else
    end
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