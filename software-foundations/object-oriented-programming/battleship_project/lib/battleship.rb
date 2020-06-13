require_relative "board"
require_relative "player"

class Battleship

  attr_reader :board, :player

  def initialize(n)
    @player = Player.new
    Board.new(n)
    @board = Board.new(n * n)
    @remaining_misses = 0.5 
    @grid = Array.new(n) { Array.new(n) } 
  end

  def start_game

    
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
    if Board.num_ships = 0
      print "you win"
      return true
    else
      return false
    end
  end

  def game_over?
    Battleship.lose? || Battleship.win?
  end

  def turn

  end

end
