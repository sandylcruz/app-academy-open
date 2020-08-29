require_relative "./board.rb"

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
      @display.render
    # end
  end

  # def make_move(keyboard_input)
  #   case keyboard_input
  #   when "a"
  #     @board.move_left!
  #   when "w"
  #     @board.move_up!
  #   when "d"
  #     @board.move_right!
  #   when "s"
  #     @board.move_down!
  #   end
  # end

  private
  def notify_players
  end

  def swap_turn!
  end
end

g = Game.new