require_relative "human_player.rb"
require_relative "board.rb"
require_relative "computer_player.rb"

class Game
  def initialize(player)
    @board = Board.new
    @previous_guess = nil
    @player = player
  end
  
  def make_guess(position)   
    if @previous_guess.nil?
      @board.reveal(position)
      @previous_guess = position
    else
      @board.reveal(position)
      system("clear")
      @board.render
      sleep(1)
      
      card_one = @board[@previous_guess]
      card_two = @board[position]

      unless card_one == card_two
        card_one.hide
        card_two.hide
      end

      @previous_guess = nil
    end
  end

  def play
    until over?
      system("clear")
      render
      answer = @player.prompt
  
      until valid_position?(answer)
        puts "Invalid position, try again"
        answer = @player.prompt
      end
  
      parsed_answer = answer.split(" ").map(&:to_i)
      make_guess(parsed_answer)
    end

    puts "You won (u dont suk)"
  end

 

  def valid_position?(position)
    string_array = position.split(" ")

    return false unless string_array.length == 2
    return false unless string_array.all? { |element| element.to_i.to_s == element }
    
    row = string_array[0].to_i
    column = string_array[1].to_i

    maximum_row = 4
    maximum_column = 4

    unless row < maximum_row && row >= 0 && column < maximum_column && column >= 0
      return false
    end

    !@board.revealed?([row, column])
  end

  def over?
    @board.won?
  end

  def render
    @board.render
  end

  
end

player = HumanPlayer.new
game = Game.new(player)

game.play