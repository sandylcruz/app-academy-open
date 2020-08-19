require_relative 'tic_tac_toe'

class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = nil
  end

  def losing_node?(evaluator)
    if board.over? && winner != evaluator
      return board.won? && board.winner != evaluator
    end
  end

  def winning_node?(evaluator)
    if board.over?
    end
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    children_array = []

    (0..2).each do |row|
      (0..2).each do |column|
        position = [row][column]

        until board.empty?
          new_board = board.dup
          new_board[position] = next_mover_mark
          prev_move_pos = new_board[position]
          new_mover_mark = 
          children.push(x) 
        end
      end
    end
    children_array
  end
end
