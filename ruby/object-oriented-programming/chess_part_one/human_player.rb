require_relative "./player.rb"
require_relative "./cursor.rb"
require_relative "./game.rb"

class HumanPlayer < Player
  def make_move(board)
    @cursor.get_input
    @game.play
  end
end