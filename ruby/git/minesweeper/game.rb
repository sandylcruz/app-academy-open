require_relative 'board.rb'
require 'io/console'

class Game
  def initialize

  end

  def play
    until game_over?
      @board.render
    end
  end

  def game_over?
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
game = Game.new
game.play