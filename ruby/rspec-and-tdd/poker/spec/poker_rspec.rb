require 'rspec'

describe Card do
  describe "#initialize" do

  end

  describe "#to_s" do 
    it "returns out a readable version of card"
      expect(card.to_s).to eq()
    end
  end
end

describe Deck do
  deck = Deck.new

  describe "#initialize" do
    it "contains the deck of cards" do
      expect(deck.cards.sort).to eq()
      end
    end
  end

  describe "#generate_deck" do
    it "generate all suit and value pairs" do
      expect
    end

    it "should shuffle completed deck" do
    end
  end

  describe "#deal_card!" do
    it "should return one card from shuffled deck" do
      expect 
    end
  end
end

describe Game do
  game = Game.new

  describe "#initialize" do
  
    it "initializes deck" do
    end

    it "initializes turn" do
    end

    it "should set pot amount to 0" do
      expect(game.pot_amount).to eq(0)
    end

  end
end

describe Hand do
  game = Game.new
  hand = Hand.new

  describe "#initialize" do

  end

  describe "#royal_flush?" do
    it
  end

  describe "#straight_flush?" do
    it
  end

  describe "#four_of_a_kind?" do
    it
  end

  describe "#full_house?" do
    it
  end

  describe "#flush?" do
    it
  end

  describe "#straight?" do
    it
  end

  describe "#three_of_a_kind?" do
    it
  end

  describe "#two_pair?" do
    it
  end

  describe "#pair?" do
    it
  end

  describe "#high_card?" do
    it
  end
end

describe Player do
  describe "#initialize" do
    it "should initialize hand" do
    end
    it "should initialize pot" do
    end
  end

  describe "#ask_player" do
    it "should ask player which card they want to discard" do
    end

    it "should ask player if they want to fold, see, or call" do
    end


  end
end