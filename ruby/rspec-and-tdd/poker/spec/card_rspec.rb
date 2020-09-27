require 'rspec'
require_relative '../lib/card.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end

describe Card do
  describe "#initialize" do
  subject(:card) { Card.new(:spades, 10) }

    it "sets up card correctly" do
      expect(card.suit).to eq(:spades)
      expect(card.value).to eq(10)
    end
  end

  describe "#to_s" do 
    it "returns out a readable version of card" do
      card = Card.new(:hearts, 4)
      expect(card.to_s).to eq("4♥")
    end
  end

  describe "#<=>" do
    it "should return 1 if left card is greater value" do
      card = Card.new(:hearts, 5)
      other_card = Card.new(:hearts, 4)
      expect(card <=> other_card).to eq(1)
    end

    it "should return 0 if left card and right card are same value" do
      card = Card.new(:hearts, 4)
      other_card = Card.new(:diamonds, 4)
      expect(card <=> other_card).to eq(0)
    end

    it "should return -1 if right card is greater value" do
      card = Card.new(:hearts, 4)
      other_card = Card.new(:hearts, 5)
      expect(card <=> other_card).to eq(-1)
    end
  end
end