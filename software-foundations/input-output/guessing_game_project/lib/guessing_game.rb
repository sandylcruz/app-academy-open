class GuessingGame
  def initialize(min, max)
    @secret_num = rand(min..max)
    @num_attempts = 0
    @game_over = false
  end

  def num_attempts
    @num_attempts
  end

  def game_over?
    @game_over
  end

  def check_num(num)
    @num_attempts += 1
    if num == @secret_num
      puts "you win"
      @game_over == true
    elsif num > @secret_num
      puts "too big"
      return false
    else
      puts "too small"
    end
  end

  def ask_user
    print 'enter a number'
    answer = gets.chomp.to_i
    guessing_game(check_num)
  end

end
