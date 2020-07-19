require './board.rb'
require './human_player.rb'
require './computer_player.rb'
require './invalid_position_error.rb'

class Game
  def initialize(size, players)
    @players = players.map do |mark, is_computer| 
      if is_computer
        ComputerPlayer.new(mark)
      else
        HumanPlayer.new(mark) 
      end
    end
    @current_player = @players.first
    @board = Board.new(size)
    @size = size
  end

  def switch_turn
    @current_player = @players.rotate!.first
  end

  def play
    while @board.empty_positions?
      @board.print
      choices = @board.legal_positions
      while true
        begin
          position = @current_player.get_position(choices)
          @current_player.mark
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