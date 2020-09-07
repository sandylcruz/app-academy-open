module Stepable
  def moves
    possible_moves = []
    move_diffs.each do |dx, dy|
      @position = x, y
      new_position = [x + dx, y + dy]
      
      if @board.valid_position?(new_position)
        if @board.empty?(new_position)
          possible_moves << new_position
        elsif @board[position].color != color
          possible_moves << new_position
        end
      end
    end
    possible_moves
  end

  private
  #this is overwritten in subclass
  def move_diffs
    
  end
end