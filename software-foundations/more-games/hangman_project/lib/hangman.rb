class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    else
      return false
    end
  end

  def get_matching_indices(potential_char)
    indices_array = []
    chars = @secret_word.split("")

    chars.each.with_index do |char, index|
      if char.include?(potential_char)
        indices_array << index
      end
    end
    indices_array
  end

  def fill_indices(char, indices)
    indices.each do |index|
      @guess_word[index] = char
    end
  end 

  # def try_guess(char)
  #   if Hangman.already_attempted?(char)
  #     puts "That has already been attempted"
  #     return false
  #   elsif @guess_word.include?(char)
  #     @already_attempted_chars << char
  #   else
  #     @remaining_incorrect_guesses -= 1
  #   end
  # end

  def ask_user_for_guess
    puts "Enter a char: "
    answer = gets.chomp
    return hangman.try_guess(char)

  end

  def win?
    if @guess_word == @secret_word
      puts "You won!"
      return true
    end
    return false
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "You LOST"
      return true
    else
      return false
    end
  end

  def game_over?
    if Hangman.win? || Hangman.lose?
      print @secret_word
      return true
    else
      return false
    end
  end



end
