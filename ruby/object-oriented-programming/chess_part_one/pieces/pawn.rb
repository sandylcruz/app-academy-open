require_relative '../piece.rb'

class Pawn < Piece
  def symbol
    '♟'.colorize(color)
  end

  def moves
    forward_steps + side_attacks
  end

  private
  
  def at_start_row?
    @position[0] && @board.color == :white
  end

  def forward_direction
    if @color == white
      1
    else
      -1
    end
  end

  def forward_steps
    x = @position[0]
    y = @position[1]
    moves = []

    one_step = [x + 1, y]
    two_steps = [x + 2, y]

    if at_start_row? && @board.empty?(two_steps)
      moves << two_steps
    end

    if @board.empty?(one_step)
      moves << one_step
    end

    moves
  end

  def side_attacks
    x = @position[0]
    y = @position[1]
    potential_diagonal_positions = [@board[x + 1, y + 1], @board[x + 1, y - 1]]

    potential_diagonal_positions.each do |diagonal_position|
      if @board.valid_position?(diagonal_position) && @board.empty?(diagonal_position)
        @board[diagonal_position].color != @color
      end
    end
  end
end