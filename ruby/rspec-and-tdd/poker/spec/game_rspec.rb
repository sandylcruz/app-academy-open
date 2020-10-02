require 'rspec'

RSpec.configure do |config|
  config.formatter = :documentation
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