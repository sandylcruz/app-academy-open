require_relative './card.rb'
require_relative './deck.rb'
require 'set'

class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards #hand class maintains instances of cards
    raise "You don't have enough cards" if @cards.count < 5
  end
  
  def trade_cards(old_cards, new_cards)
    discard_cards(old_cards)
    take_cards(new_cards)
    sort!
  end

  def to_s
    @cards.join(" ")
  end

  def sort!
    @cards.sort!
  end

  def take_cards(*new_cards)
    @cards.push(*new_cards)
  end

  def discard_cards(old_cards)
    old_cards.each do |old_card|
      cards.delete(old_card)
    end
  end
 
  def same_suit?
    suits = []
    @cards.each do |card|
      if suits.include?(card)
        suits << card
      end
    end

    if suits.length > 1
      return false
    else
      return true
    end
  end

  def same_value?

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
      return 10 * 10
    elsif straight_flush?
      return 9 * 10
    elsif four_of_a_kind?
      return 8 * 10
    elsif full_house?
      return 7 * 10
    elsif flush?
      return 6 * 10
    elsif straight?
      return 5 * 10
    elsif three_of_a_kind?
      return 4 * 10
    elsif two_pair?
      return 3 * 10
    elsif pair?
      return 2 * 10
    else
      return high_card.value
    end
  end

  def royal_flush? # A, K, Q, J, 10 same suit
    return false if !same_suit?
  end
  
  def high_card # 5 cards that don't interact with each other
    @cards.sort[-1]
  end

  private

  def straight_flush? # Any straight in same suit
    # same_suit? && straight?
  end

  def four_of_a_kind? # 4 cards same value. 1 extra
    card_counts = {}
    sorted_cards = @cards.sort!

    sorted_cards.each do |card|
      value = card.value
      if !card_counts.key?(value)
        card_counts[value] = 1
      else
        card_counts[value] = card_counts[value] + 1
      end
    end

    fours_count = card_counts.count do |value, value_count|
      value_count == 4
    end

   fours_count == 1
  end

  def full_house? # 3 cards same value, 2 extra
    card_counts = {}
    sorted_cards = @cards.sort!

    sorted_cards.each do |card|
      value = card.value
      if !card_counts.key?(value)
        card_counts[value] = 1
      else
        card_counts[value] = card_counts[value] + 1
      end
    end

    threes_count = card_counts.count do |value, value_count|
      value_count == 3
    end

    twos_count = card_counts.count do |value, value_count|
      value_count == 2
    end

   threes_count == 1 && twos_count == 1
  end

  def flush? # 5 cards, same suit in any order
    first_card = @cards[0]
    first_suit = first_card.suit

    @cards.drop(1).each do |card|
      if card.suit != first_suit
        return false
      end
    end
    return true
  end

  def straight? # 5 cards consecutive value, not same suit
    i = 0
    sorted_cards = @cards.sort

    while i < sorted_cards.length - 1
      first_card = sorted_cards[i]
      second_card = sorted_cards[i + 1]
      difference = second_card.value - first_card.value

      return false if difference != 1
      i += 1
    end
   
    return true
  end

  def three_of_a_kind? # 3 cards of same value,  2 extra 
    card_counts = {}
    sorted_cards = @cards.sort!

    sorted_cards.each do |card|
      value = card.value
      if !card_counts.key?(value)
        card_counts[value] = 1
      else
        card_counts[value] = card_counts[value] + 1
      end
    end

    threes_count = card_counts.count do |value, value_count|
      value_count == 3
    end

   threes_count == 1
  end

  def two_pair? # 2 cards same value, 2 cards equal value, 1 extra
    card_counts = {}

    @cards.each do |card|
      value = card.value
      if !card_counts.key?(value)
        card_counts[value] = 1
      else
        card_counts[value] = card_counts[value] + 1
      end
    end

    pairs_count = card_counts.count do |value, value_count|
      value_count == 2
    end

    pairs_count == 2
  end

  def pair? # 2 cards same value, 3 extra cards
    unique_values.length == 4
  end

  def unique_values
    unique_set = Set.new
    unique_array = []

    @cards.each do |card|
      if !unique_set.include?(card.value)
        unique_set.add(card.value)
        unique_array << card.value
      end
    end
    unique_array
  end
end

