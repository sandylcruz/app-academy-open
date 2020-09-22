require_relative "./card.rb"

class Deck
  def initialize
    @cards = generate_deck
  end

  private

  def generate_deck
    complete_deck = []
  
    Card::VALUES.each do |value_key, value_value|
      Card::SUITS.each do |suit_key, suit_value|
        card = Card.new(suit_key, value_key)
        complete_deck << card
      end
    end

    complete_deck
  end

  def deal_cards
  end
end