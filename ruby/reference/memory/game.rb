class Game
  def initialize(player = nil)
    @board = Board.new
    @previous_guess = nil
    @player = play
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
      position = prompt
      make_guess(position)
    end

    puts "You won (u dont suk)"
  end

  def prompt
    puts "Enter a position: (x y)"
    
    answer = gets.chomp

    until valid_position?(answer)
      puts "Invalid position, try again"
      answer = gets.chomp
    end

    answer.split(" ").map(&:to_i)
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

game = Game.new

game.play