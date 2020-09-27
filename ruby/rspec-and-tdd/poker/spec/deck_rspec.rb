require 'rspec'
require '../lib/deck.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end

describe Deck do
  describe "#cards" do
    it "contains 52 cards" do
      deck = Deck.new
      expect(deck.count).to eq(52)
    end

    it "contains no duplicates" do
      deck = Deck.new
      expect(deck.uniq.length).to eq(52)
    end

    it "should call .shuffle on completed deck" do
      deck1 = Deck.new
      deck2 = Deck.new
      expect(deck1).not_to eql(deck2)
    end
  end

  describe "#deal_card!" do
    it "should return one card from shuffled deck" do
      deck = Deck.new
      expect (deck.length).to eq() 
    end

    it "should call take_card method" do
      deck = Deck.new
    end
  end

  describe "#take_card" do
    it "should give you number of cards" do 
      deck = Deck.new
      expect(deck.take_card).to eq()
    end
  end
end