require_relative 'piece'

class Pawn < Pieces
  def symbol
    '♟'.colorize(color)
  end

  def move_directions
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