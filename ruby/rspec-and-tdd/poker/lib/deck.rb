require_relative "./card.rb"

class Deck
  attr_reader :cards, :deck

  def initialize
    @cards = generate_deck
  end

  def generate_deck
    complete_deck = []
  
    Card::VALUES.each do |value_key, value_value|
      Card::SUITS.each do |suit_key, suit_value|
        card = Card.new(suit_key, value_key)
        complete_deck << card
      end
    end

    complete_deck.shuffle
  end

  def deal_card!
    take_cards(1)
  end

  def take_cards(number)
    @cards.shift(number)
  end
end