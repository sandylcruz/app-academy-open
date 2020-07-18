require './board.rb'
require './human_player.rb'
require './invalid_position_error.rb'

class Game
  def initialize(size, mark_1, mark_2)
    @player_1 = HumanPlayer.new(mark_1)
    @player_2 = HumanPlayer.new(mark_2)
    @current_player = @player_1
    @board = Board.new(size)
    @size = size
  end

  def switch_turn
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def play
    while @board.empty_positions?
      @board.print
      while true
        begin
          position = @current_player.get_position
          @board.place_mark(position, @current_player.mark)
          break
        rescue InvalidPositionError
          @board.print
          puts "try another position"
        end
      end
      if @board.win?(@current_player.mark)
        @board.print
        return "You won =^. .^="
      else
        switch_turn
      end
    end
    @board.print
    puts "Game over =v. .v="
    puts "DRAW"
  end
end