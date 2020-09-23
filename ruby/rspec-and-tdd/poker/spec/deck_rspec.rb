require 'rspec'

describe Deck do
  deck = Deck.new

  describe "#initialize" do
    it "contains the deck of cards" do
      expect(deck.cards.sort).to eq()
      end
    end
  end

  describe "#generate_deck" do
    it "generate 52 unique cards" do
      complete_deck = {}
      Card::VALUES.each do |value_key, value_value|
        Card::SUITS.each do |suit_key, suit_value|
          card = Card.new(suit_key, value_key)
          complete_deck << card
        end
      end
      expect(deck.complete_deck.length).to eq(52)
      expect(deck.complete_deck.uniq).to eq(true)
    end

    it "should shuffle completed deck" do
    end
  end

  describe "#deal_card!" do
    it "should return one card from shuffled deck" do
      expect 
    end

    it "should call take_card method" do
      expect
    end
  end

  describe "#take_card" do
    it "should give you n number of cards" do 

    end
  end
end