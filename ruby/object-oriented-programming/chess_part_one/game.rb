require_relative "./board.rb"
require_relative "./display.rb"
require_relative "./player.rb"
require_relative "./human_player.rb"

class Game
  attr_reader :board
  attr_reader :display
  attr_reader :players
  attr_reader :current_player

  def initialize
    @board = Board.new
    @display = Display.new(@board, self)
    @player_one = Player.new(:black, @display, "Callie")
    @player_two = Player.new(:white, @display, "Louis")
    @current_player = @player_one
  end

  def play
    until @board.checkmate?(@player_one.color) || @board.checkmate?(@player_two.color)
      @display.render
      initial_position = @display.cursor.get_input(@current_player)

      while @display.cursor.selected
        piece = @board[initial_position]
        possible_moves = piece.valid_moves
        @display.render(possible_moves)
        puts "hi"
        next_position = @display.cursor.get_input(@current_player)
        print next_position
        # start_pos, end_pos = @current_player.make_move(board)
        @board.move_piece(@current_player, initial_position, next_position)
        @display.cursor.toggle_selected(@current_player)
        @display.render
      end
      # swap_turn!
    end
  end

  private
  def swap_turn!
    if @current_player == @player_one
      @current_player = @player_two
    else
      @current_player = @player_one
    end
  end
end

game = Game.new
game.play