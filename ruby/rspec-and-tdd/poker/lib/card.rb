class Card
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
  end

  def to_s
    "#{VALUES[@value]}#{SUITS[@suit]}"
  end

  def ==(card1, card2)
  end
end