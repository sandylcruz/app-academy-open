require_relative "./board.rb"
require_relative "./display.rb"

class Game
  attr_reader :board
  attr_reader :display
  attr_reader :players
  attr_reader :current_player

  def initialize
    @board = Board.new
    @display = Display.new(@board)
    @players = {}
    @current_player = nil
  end

  def play
    # until @board.solved?
    while true
      @display.render
      @display.cursor.get_input
    end
  end

  private
  def notify_players
  end

  def swap_turn!
  end
end

game = Game.new
game.play