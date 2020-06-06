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
    @remaining_incorrect_guesses
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
  
    @secret_word.each_char.with_index do |secret_char, i|
      if char == secret_char
        matching_indices << i
      end
    end
    matching_indices
  end

  def fill_indices(char, indices)
    indices.each do |index|
      @guess_word[index] = char
    end
  end

  def try_guess(char)
    if self.already_attempted?(char)
      print "That has already been attempted"
      return false
    end

    @attempted_chars << char
    
    matches = self.get_matching_indices(char)
    self.fill_indices(char, matches)

    if matches.empty?
      @remaining_incorrect_guesses -= 1
    end
    true
  end

  def ask_user_for_guess
    print "Enter a char: "
    char = gets.chomp
    return self.try_guess(gets.chomp)
  end

  def win?

    if @guess_word.join("") == @secret_word
      print "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      print "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if @win == true
      print @secret_word
      return true
    elsif @lose == false
      return false
    end
  end




end
