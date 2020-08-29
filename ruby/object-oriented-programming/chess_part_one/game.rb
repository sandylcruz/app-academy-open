class Game
  def initialize
    @board = board
    @display = display
    @players = {}
    @current_player = current_player
  end

  def play
    # until @board.solved?
      @board.render
    # end
  end

  private
  def notify_players
  end

  def swap_turn!
  end

end