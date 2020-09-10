class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
      system("clear")
    end
   
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence 
    require_sequence

    unless @game_over == true
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    print "Repeat back the new sequence:"
    new_sequence = gets.chomp
    if !new_sequence.include? 

    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "That was correct!"
  end

  def game_over_message
    puts "Incorrect. Game over :("
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
