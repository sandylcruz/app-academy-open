require_relative 'null_piece.rb'
module Slideable

  HORIZONTAL_DIRS = [
    [0, -1], 
    [-1, 0],
    [0, 1], 
    [1, 0]    
  ]
  DIAGONAL_DIRS = [
    [-1, -1],
    [-1, 1],
    [1, 1],   
    [1, -1]
  ]

  def moves
    moves_to_return = []
    move_directions.each do |move_direction|
      dx, dy = move_direction 
      moves_to_return += grow_unblocked_moves_in(dx, dy)
    end
    moves_to_return
  end

  private

  def move_directions
  end


  def grow_unblocked_moves_in(dx, dy)
    moves_to_return = []
    
    current_position = @position
    keep_expanding = true
    
    while keep_expanding
      x, y = current_position
      potential_position = [x + dx, y + dy]

      if @board.valid_position?(potential_position)
        piece = @board[potential_position]
        is_enemy_piece = @color != piece.color && piece != NullPiece.instance
        
        if piece == NullPiece.instance || is_enemy_piece
          moves_to_return << potential_position
          current_position = potential_position
          if is_enemy_piece
            keep_expanding = false
          end
        else
          keep_expanding = false
        end
      else
        keep_expanding = false
      end
    end

    moves_to_return
  end
end