require_relative 'board.rb'
require 'io/console'

class Game
  attr_reader :board
  def initialize
    @board = Board.new
  end

  def play
    until game_over?
      puts "hi"
      @board.render
      keyboard_input = get_input
      make_move(keyboard_input)
    end
  end

  def game_over?
    false
  end

  def game_won?
  end

  # def make_move(keyboard_input) 
  #   case keyboard_input
  #   when "a"
  #     @board.move_left!
  #   when "w"
  #     @board.move_up!
  #   when "d"
  #     @board.move_right!
  #   when "s"
  #     @board.move_down!
  #   end
  # end

  # def get_input
  #   input = STDIN.getch
  #   exit(0) if input == "\u0003"
  #   input
  #  end
end
game = Game.new
game.play