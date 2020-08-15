require_relative 'board.rb'
require 'io/console'

class Game
  attr_reader :board, :grid_size, :num_bombs

  def initialize(grid_size, num_bombs)
    @board = Board.new(grid_size, num_bombs)
  end

  def get_input
    input = STDIN.getch
    exit(0) if input == "\u0003"
    input
   end

  def play
    has_hit_bomb = false

    until has_hit_bomb || @board.won?
      system("clear")
      @board.render
      keyboard_input = get_input
      has_hit_bomb = make_move(keyboard_input)
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
      return false
    when "w"
      @board.move_up!
      return false
    when "d"
      @board.move_right!
      return false
    when "s"
      @board.move_down!
      return false
    when "enter"
      return @board.expand!
    end

    return false
  end


end
game = Game.new(5, 5)
game.play