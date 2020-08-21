require_relative 'tic_tac_toe_node'

class SuperComputerPlayer < ComputerPlayer
  def move(game, mark)
    node = TicTacToeNode.new(game.board, mark)
    possible_moves = node.children

    possible_moves.each do |node|
      if node.winning_node?(mark)
        return node.prev_move_pos
      end
    end

    possible_moves.each do |node|
      if !node.losing_node?(mark)
        return node.prev_move_pos
      end
    end

    raise "There are no non-losing nodes :("
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Play the brilliant computer!"
  hp = HumanPlayer.new("Jeff")
  cp = SuperComputerPlayer.new

  TicTacToe.new(hp, cp).run
end
