require_relative 'board.rb'
require 'io/console'

class Game
  attr_reader :board, :grid_size, :num_bombs

  def initialize(grid_size, num_bombs)
    @board = Board.new(grid_size, num_bombs)
  end

  def play
    has_hit_bomb = false
    until has_hit_bomb || @board.won?
      @board.print
      input = get_input
      has_hit_bomb = @board.expand!(input)
      make_move
    end

    if @board.won?
      puts "You won! =^..^="
    elsif @board.lost?
      puts "** Bomb hit ** You lose :("
      @board.reveal
    end
  end

  def make_move(keyboard_input) 
    case keyboard_input
    when "a"
      @board.move_left!
    when "w"
      @board.move_up!
    when "d"
      @board.move_right!
    when "s"
      @board.move_down!
    end
  end

  def get_input
    input = STDIN.getch
    exit(0) if input == "\u0003"
    input
   end
end
game = Game.new(10, 5)
game.play