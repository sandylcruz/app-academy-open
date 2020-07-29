require_relative  "board.rb", "game.rb"

class Card
  def initialize(value, revealed)
    @value = value
    @revealed = false
    @face_up = false
  end

  def hide(position)
    @face_up = false
  end

  def reveal(position)
    @face_up = true
  end

  def to_s
  end

  def ==(object)
  end

  def flip
  end



end