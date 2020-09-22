require './card.rb'

class Hand

  RANKINGS:[
    :royal_flush,
    :straight_flush,
    :four_of_a_kind,
    :full_house,
    :flush,
    :straight,
    :three_of_a_kind
    :two_pair
    :pair
    :high_card
  ]
  attr_reader :cards

  def initialize
    raise "You don't have enough cards" if @cards.length < 5
    
    @cards = cards.sort
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