class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remainting_incorrect_guesses
    @remaining_incorrect_guesses -= 1
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    else
      return false
    end
  end

  def get_matching_indices(char)
    matching_indices = []
  
    secret_word.each_with_index do |secret_char, index|
      if char == secret_char
        matching_indices << index
      else
        return []
      end
    end
    return matching_indices
  end

  def fill_indices(char, array)
    
  end

  def try_guess(char)

  end

  def ask_user_for_guess
    print "Enter a char: "
    answer = gets.chomp
    Hangman[try_guess].include?(char)
  end

  def win?
    if @guess_word == @secret_word
      print "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses = 0
      print "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?

  end

end
