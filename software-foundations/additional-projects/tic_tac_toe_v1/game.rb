class Game

  require './board.rb'
  require './human_player.rb'

  def initialize(mark_1, mark_2)
    player_1 = Human_player.new(mark_1)
    player_2 = Human_player.new(mark_2)
    @board = Board.new
    @current_player = player_1
  end

  def switch_turn
    if @current_player == player_1
      @current_player == player_2
    else
      @current_player == player_1
    end
  end

  def play
  end
  
end

