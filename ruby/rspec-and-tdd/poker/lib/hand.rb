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
 
  def same_suit?
    # @cards.
  end

  def same_value?

  end

  def royal_flush? # A, K, Q, J, 10 same suit
    return false if !same_suit?
  end

  def straight_flush? # Any straight in same suit
    return false if !same_suit?
  end

  def four_of_a_kind? # 4 cards same value. 1 extra
  end

  def full_house? # 3 cards same value, 2 extra
  end

  def flush? # 5 cards in same suit in any order
    return false if !same_suit?
  end

  def straight? # 5 cards same value, not same suit
    return false if !same_value?
  end

  def three_of_a_kind? # 3 cards of same value,  2 extra 
  end

  def two_pair? # 2 cards same value, 2 cards equal value, 1 extra
  end

  def pair? # 2 cards same value, 3 extra cards
  end

  def high_card # 5 cards that don't interact with each other
    @cards.sort[-1]
  end

  def <=>(other_hand)
    if value < other_hand.value
      return -1
    elsif value > other_hand.value
      return 1
    else
      if royal_flush?
        return other_hand.royal_flush? ? 0 : -1
      end

      high_card <=> other_hand.high_card
    end
  end

  protected

  def value
    if royal_flush?
      return 10
    elsif straight_flush?
      return 9
    elsif four_of_a_kind?
      return 8
    elsif full_house?
      return 7
    elsif flush?
      return 6
    elsif straight?
      return 5
    elsif three_of_a_kind?
      return 4
    elsif two_pair?
      return 3
    elsif pair?
      return 2
    else
      return 1
    end
  end
end

deck = Deck.new
first_hand_cards = deck.take_cards(5)
hand_one = Hand.new(first_hand_cards)
second_hard_cards = deck.take_cards(5)
hand_two = Hand.new(second_hard_cards)

puts hand_one <=> hand_two
puts hand_one
puts hand_two

