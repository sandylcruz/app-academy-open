class Card
  attr_reader :face_value

  def initialize(face_value)
    @face_value = face_value
    @face_up = false
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
    if revealed?
      @face_value
    else
      " "
    end
  end

  def ==(another_card)
    @face_value == another_card.face_value
  end
end