class AiPlayer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ai_guess(dictionary, fragment, &prc)
    valid_letters = ("a".."z").filter do |letter|
      prc.call(letter)
    end
    
    losing_letters = []
    winning_letters = []

    valid_letters.each do |letter|
      potential_word = fragment + letter
      if dictionary.include?(potential_word)
        losing_letters << letter
      else
        winning_letters << letter
      end
    end

    if winning_letters.length > 0
      winning_letters.sample
    else
      losing_letters.sample
    end
  end
end