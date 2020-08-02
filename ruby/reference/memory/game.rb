require_relative "human_player.rb"
require_relative "board.rb"
require_relative "computer_player.rb"

class Game
  def initialize(player)
    @board = Board.new
    @previous_guess = nil
    @player = player
    @computer_player = ComputerPlayer.new
  end
  
  def make_guess(position)   
    if @previous_guess.nil?
      @board.reveal(position)
      @previous_guess = position
    else
      @board.reveal(position)
      # system("clear")
      render
      sleep(1)
      
      card_one = @board[@previous_guess]
      card_two = @board[position]

      unless card_one == card_two
        @computer_player.receive_match(@previous_guess, position)
        card_one.hide
        card_two.hide
      end

      @previous_guess = nil
    end
  end

  def take_turn(player)
    puts "#{player} is playing"

    2.times do |guess_number|
      # system("clear")
      render
      puts "Here's the guess number:"
      puts guess_number
      answer = player.prompt(guess_number)

      if @player == player
        until valid_position?(answer)
          puts "Invalid position, try again"
          answer = player.prompt(guess_number)
        end
        parsed_answer = answer.split(" ").map(&:to_i)
        make_guess(parsed_answer)
        card = @board[parsed_answer]
        @computer_player.receive_revealed_card(parsed_answer, card)
      else
        make_guess(answer)
        card = @board[answer]
        @computer_player.receive_revealed_card(answer, card)
      end
    end
  end

  def play
    current_player = @player

    until over?
      take_turn(current_player)
      current_player = current_player == @player ? @computer_player : @player
    end

    winner = current_player == @player ? @computer_player : @player
    puts "#{winner} won"
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
    puts @computer_player.known_cards
  end

  
end

player = HumanPlayer.new
game = Game.new(player)

game.play