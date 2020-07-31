# require_relative  "./board.rb"
# require_relative  "./game.rb"

class Card
  def initialize(face_value = 0, face_up = false)
    @face_value = face_value
    @face_up = face_up
  end

  def hide
    @face_up = false
  end

  def reveal
    @face_up = true
  end

  def revealed?
    @face_up == true
  end

  def to_s
    
  end

  def ==(another_card)
    @face_value == another_card.face_value
  end


end