class Card
  attr_reader :value, :suit

  SUITS = {
    clubs: "♣",
    diamonds: "♦",
    hearts: "♥",
    spades: "♠"
  }

  VALUES = {
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "J",
    12 => "Q",
    13 => "K",
    14 => "A"
  }

  def initialize(suit, value)
    @suit = suit
    @value = value
    # unless Card.suits.include?(suit) and Card.values.include?(value)
  end

  def to_s
    "#{VALUES[@value]}#{SUITS[@suit]}"
  end

  def <=>(other_card)
    self.value <=> other_card.value
  end
end