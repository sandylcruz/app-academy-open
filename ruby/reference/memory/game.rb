require_relative  "board.rb", "card.rb"
class Game

  def initialize
    @board = Board.new
  end

  def position
    
  end
  
  def make_guess(position)
    puts "Please enter the position of the cards you'd like to flip, (e.g. '2, 3')"
    position = gets.chomp
    first_num = position[0]
    second_num = position[1]
  end

  def match?(position1, position2)
    card1 = card.reveal(position1)
    card2 = card.reveal(position2)

    if card1 == card2
      puts "It's a match!"
    else
      puts "Not a match. Try again"
    end
  end

  def play
  end

  def valid_position?(position)
    row = position[0]
    column = position[1]
    max_row = 4
    max_col = 4

    if row < maximum_row && row >= 0 && column < maximum_column && column >= 0
      retunr true
    else
      return false
    end
  end

  def over
  end

  def render
  end

  def prompt
  end

  def guessed_position
  end

  def previous_guess
  end

  def system(clear)
  end

  def render
  end

  def sleep(n)
  end

  def n
  end
end