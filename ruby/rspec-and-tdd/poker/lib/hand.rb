require './card.rb'
require './deck.rb'

class Hand
  
  # RANKINGS:[
  #   :royal_flush,
  #   :straight_flush,
  #   :four_of_a_kind,
  #   :full_house,
  #   :flush,
  #   :straight,
  #   :three_of_a_kind
  #   :two_pair
  #   :pair
  #   :high_card
  # ]
  attr_reader :cards

  def initialize(cards)
    @cards = cards
    raise "You don't have enough cards" if @cards.count < 5
  end

  def trade_cards
  end

  def to_s
    @cards.join(" ")
  end

  def royal_flush?
  end

  def straight_flush?
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
  end

  def straight?
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def pair?
  end

  def high_card?
    @cards.sort[-1]
  end

  def winning_hand?
  end

end
deck = Deck.new
cards = deck.take_cards(5)
hand = Hand.new(cards)
puts hand.to_s
# puts cards.sort
# puts hand.high_card?