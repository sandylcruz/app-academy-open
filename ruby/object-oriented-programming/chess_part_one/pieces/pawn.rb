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
    row_index = @position[0]
    row_index == 1 && @color == :black || row_index == 6 && @color == :white
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

    if @color == :white
      one_step = [x - 1, y]
      two_steps = [x - 2, y]
    end

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
    potential_diagonal_positions = [[x + 1, y + 1], [x + 1, y - 1]]
    
    if @color == :white
      potential_diagonal_positions = [[x - 1, y + 1], [x - 1, y - 1]]
    end

    potential_diagonal_positions.select do |diagonal_position|
      is_valid_position = @board.valid_position?(diagonal_position)
      is_valid_position && !@board.empty?(diagonal_position) && @board[diagonal_position].color != @color
    end
  end
end