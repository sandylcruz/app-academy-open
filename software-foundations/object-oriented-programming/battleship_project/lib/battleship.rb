require_relative "board"
require_relative "player"

class Battleship
  attr_reader :board, :player

  def initialize(n)
    @player = Player.new
    @board = Board.new(n)
    @remaining_misses = 0.5 * @board.size
  end

  def start_game
    number_of_placed_ships = @board.place_random_ships
    print number_of_placed_ships
    @board.print
  end

  def lose?
    if @remaining_misses <= 0
      print "you lose"
      return true
    else
      return false
    end
  end

  def win?
    num_ships = @board.num_ships
    if num_ships == 0
      print 'you win'
      return true
    else
      return false
    end
  end

  def game_over?
    lose? || win?
  end

  def turn
    move = @player.get_move
    is_a_hit = @board.attack(move)
    @board.print
    unless is_a_hit
      @remaining_misses -= 1
    end
    print @remaining_misses
  end

end
