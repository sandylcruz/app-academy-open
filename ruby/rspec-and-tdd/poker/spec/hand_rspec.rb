require 'rspec'
require '../lib/hand.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end

describe Hand do
  game = Game.new
  hand = Hand.new

  describe "#initialize" do
    it "should initialize cards variable" do
    end
  end

  describe "#trade" do 
    it "should " 
  end

  describe "#to_s" do

    it "should print out hand"
  end

  describe "#sort!" do
    it "should sort 5 cards in order" do
      
    end
  end

  describe "#take_cards" do
  end

  describe "#discard_cards" do
  end

  describe "#same_suit?" do
    it "should return true if 2 cards are same suit" do
    end

    it "should return false if 2 cards are different suits" do
    end
  end

  describe "#same_value?" do
    it "should return true if 2 cards are same value" do
    end

    it "should return false if 2 cards are different value"
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
    it "should return the highest value card from hand" do
      expect()
    end
  end

  describe "#<=>" do
    it do
    end
  end

  describe "#value" do
    it do
    end
  end
end