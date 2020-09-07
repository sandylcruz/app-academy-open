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
    @position[0] 
  end

  def forward_direction
    x = @position[0]
    y = @position[1]

    forward_coordinate = [x + 1, y]
  end

  def forward_steps
    x = @position[0]
    y = @position[1]
    moves = []

    one_step = [x + 1, y]
    two_steps = [x + 2, y]

    if at_start_row? && @board.empty?
      moves << two_steps
    end

    moves
  end

  def side_attacks
    x = @position[0]
    y = @position[1]
  end
end