require 'io/console'
require_relative 'board.rb'

class Game
  def initialize
    @board = Board.from_file
  end

  def play
    until solved
      @board.render
      keyboard_input = get_input
      make_move(keyboard_input)
    end
  end

  def is_number?(input)
    if input !~ /\D/
      return true
    else
      return false
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

    if is_number?(keyboard_input)
      @board.mark_number(keyboard_input)
    else
      puts "Invalid input"
    end
  end

  def solved
    @board.all_solved?
  end

  def get_input
    input = STDIN.getch
    exit(0) if input == "\u0003"
    input
  end

end

game = Game.new
game.play