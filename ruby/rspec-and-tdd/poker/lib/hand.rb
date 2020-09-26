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

  def sort!
    @cards.sort!
  end

  def take_cards(cards)
    @cards.push(cards)
  end
 
  def royal_flush? # A, K, Q, J, 10 same suit
  end

  def straight_flush? # Any straight in same suit
  end

  def four_of_a_kind? # 4 cards same value. 1 extra
  end

  def full_house? # 3 cards same value, 2 extra
  end

  def flush? # 5 cards in same suit in any order
  end

  def straight? # 5 cards same value, not same suit
  end

  def three_of_a_kind? # 3 cards of same value,  2 extra 
  end

  def two_pair? # 2 cards same value, 2 cards equal value, 1 extra
  end

  def pair? # 2 cards same value, 3 extra cards
  end

  def high_card? # 5 cards that don't interact with each other
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
puts hand.take_cards(cards)
puts hand.to_s