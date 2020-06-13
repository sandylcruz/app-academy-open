require_relative "board"
require_relative "player"

class Battleship

  attr_reader :board, :player
  
  def initialize(n)
    @player = Player.new
    Board.new(n)
    @board = Board.new(n * n)
    @remaining_misses = 0.5 
  end
end
