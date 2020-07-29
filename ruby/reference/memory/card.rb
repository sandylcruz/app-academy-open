# require_relative  "board.rb"
# require_relative  "game.rb"

class Card
  def initialize(value, revealed = false)
    @value = value
    @revealed = revealed
  end

  def display_card_information
    if @revealed == true?
      return @value
    else

    end
  end

  def hide(position)
    @revealed = false
  end

  def reveal(position)
    @revealed = true
  end

  def revealed?
    @revealed
  end

  # possible not needed
  def to_s
    display_card_information
  end

  def ==(object)
  end

  def flip
    @face_up
  end



end