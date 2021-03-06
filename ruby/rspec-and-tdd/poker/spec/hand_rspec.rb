require 'rspec'
require_relative '../lib/hand.rb'


RSpec.configure do |config|
  config.formatter = :documentation
end

describe Hand do
  describe "#initialize" do
    it "should initialize cards variable" do
    end
  end

  describe "#<=>" do
    describe "when current_hand only has highest card" do
      describe "when both have only have highest cards" do

        it "should return 1 when current_hand has highest card" do
          first_hand_cards = [
            Card.new(:clubs, 2),
            Card.new(:diamonds, 5),
            Card.new(:spades, 7),
            Card.new(:hearts, 9),
            Card.new(:clubs, 12)
          ]

          second_hand_cards = [
            Card.new(:clubs, 3),
            Card.new(:spades, 5),
            Card.new(:hearts, 7),
            Card.new(:clubs, 9),
            Card.new(:diamonds, 11)
          ]

          hand1 = Hand.new(first_hand_cards)
          hand2 = Hand.new(second_hand_cards)

          expect(hand1 <=> hand2).to eq(1)
        end

        it "should return 0 if current_hand and other_hand are equal" do
          first_hand_cards = [
            Card.new(:clubs, 2),
            Card.new(:diamonds, 5),
            Card.new(:spades, 7),
            Card.new(:hearts, 9),
            Card.new(:clubs, 12)
          ]

          second_hand_cards = [
            Card.new(:clubs, 3),
            Card.new(:spades, 5),
            Card.new(:hearts, 7),
            Card.new(:clubs, 9),
            Card.new(:diamonds, 12)
          ]

          hand1 = Hand.new(first_hand_cards)
          hand2 = Hand.new(second_hand_cards)

          expect(hand1 <=> hand2).to eq(0)
        end

        it "should return -1 if current_hand is less than other_hand" do
          first_hand_cards = [
            Card.new(:clubs, 2),
            Card.new(:diamonds, 5),
            Card.new(:spades, 7),
            Card.new(:hearts, 9),
            Card.new(:clubs, 10)
          ]

          second_hand_cards = [
            Card.new(:clubs, 3),
            Card.new(:spades, 5),
            Card.new(:hearts, 7),
            Card.new(:clubs, 9),
            Card.new(:diamonds, 11)
          ]

          hand1 = Hand.new(first_hand_cards)
          hand2 = Hand.new(second_hand_cards)

          expect(hand1 <=> hand2).to eq(-1)
        end
      end
      
      it "should return -1 if other_hand is greater than highest card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 5),
          Card.new(:spades, 7),
          Card.new(:hearts, 9),
          Card.new(:clubs, 12)
        ]

        second_hand_cards = [
          Card.new(:clubs, 3),
          Card.new(:spades, 3),
          Card.new(:hearts, 3),
          Card.new(:clubs, 9),
          Card.new(:diamonds, 13)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has a pair" do
      it "should return 1 if other_hand only has high card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 5),
          Card.new(:spades, 9),
          Card.new(:hearts, 9),
          Card.new(:clubs, 11)
        ]

        second_hand_cards = [
          Card.new(:clubs, 3),
          Card.new(:spades, 5),
          Card.new(:hearts, 7),
          Card.new(:clubs, 9),
          Card.new(:diamonds, 11)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has a pair and both have the same highest card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 5),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]

        second_hand_cards = [
          Card.new(:clubs, 3),
          Card.new(:spades, 5),
          Card.new(:hearts, 7),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 12)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end

      it "should return 1 if other_hand also has pair, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 5),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]

        second_hand_cards = [
          Card.new(:clubs, 3),
          Card.new(:spades, 5),
          Card.new(:hearts, 7),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 9)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has pair, and other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 5),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 9)
        ]

        second_hand_cards = [
          Card.new(:clubs, 3),
          Card.new(:spades, 5),
          Card.new(:hearts, 7),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 12)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than a pair" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 5),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]

        second_hand_cards = [
          Card.new(:clubs, 10),
          Card.new(:spades, 10),
          Card.new(:hearts, 8),
          Card.new(:clubs, 8),
          Card.new(:diamonds, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has a two_pair" do
      it "should return 1 if current_hand has two_pair and other_hand has single pair" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 2),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 10),
          Card.new(:spades, 10),
          Card.new(:hearts, 8),
          Card.new(:clubs, 2),
          Card.new(:diamonds, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has two pair and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 2),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 2),
          Card.new(:hearts, 7),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 12)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end

      it "should return 1 if other_hand also has two pair, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:diamonds, 9),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 13)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 2),
          Card.new(:hearts, 7),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 12)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has two pair, but other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:diamonds, 9),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 2),
          Card.new(:hearts, 7),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 13)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than a pair" do
        first_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:diamonds, 9),
          Card.new(:spades, 7),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 2),
          Card.new(:hearts, 2),
          Card.new(:diamonds, 2),
          Card.new(:diamonds, 12)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has three_of_a_kind" do
      it "should return 1 if current_hand has three_of_a_kind and other_hand has two_pair" do
        first_hand_cards = [
          Card.new(:clubs, 11),
          Card.new(:diamonds, 11),
          Card.new(:spades, 11),
          Card.new(:hearts, 7),
          Card.new(:clubs, 5)
        ]
        second_hand_cards = [
          Card.new(:clubs, 5),
          Card.new(:spades, 5),
          Card.new(:hearts, 8),
          Card.new(:clubs, 8),
          Card.new(:diamonds, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has three of a kind and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 2),
          Card.new(:spades, 2),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 2),
          Card.new(:hearts, 2),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 12)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end 

      it "should return 1 if other_hand also has three of a kind, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:diamonds, 9),
          Card.new(:spades, 9),
          Card.new(:hearts, 7),
          Card.new(:clubs, 13)
        ]
        second_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:spades, 9),
          Card.new(:hearts, 9),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 12)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has three of a kind, but other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:diamonds, 9),
          Card.new(:spades, 9),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:spades, 9),
          Card.new(:hearts, 9),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 13)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than three of a kind" do
        first_hand_cards = [
          Card.new(:clubs, 9),
          Card.new(:diamonds, 9),
          Card.new(:spades, 9),
          Card.new(:hearts, 7),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 10),
          Card.new(:spades, 9),
          Card.new(:hearts, 8),
          Card.new(:diamonds, 7),
          Card.new(:diamonds, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has a straight" do
      it "should return 1 if current_hand has a straight and other_hand has three of a kind" do
        first_hand_cards = [
          Card.new(:clubs, 11),
          Card.new(:diamonds, 10),
          Card.new(:spades, 9),
          Card.new(:hearts, 8),
          Card.new(:clubs, 7)
        ]
        second_hand_cards = [
          Card.new(:clubs, 11),
          Card.new(:diamonds, 11),
          Card.new(:spades, 11),
          Card.new(:hearts, 7),
          Card.new(:clubs, 5)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has a straight and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:diamonds, 3),
          Card.new(:spades, 4),
          Card.new(:hearts, 5),
          Card.new(:clubs, 6)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 3),
          Card.new(:hearts, 4),
          Card.new(:clubs, 5),
          Card.new(:diamonds, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end

      it "should return 1 if other_hand also has a straight, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 3),
          Card.new(:spades, 4),
          Card.new(:hearts, 5),
          Card.new(:clubs, 6),
          Card.new(:diamonds, 7)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 3),
          Card.new(:hearts, 4),
          Card.new(:clubs, 5),
          Card.new(:diamonds, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has straight, but other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 3),
          Card.new(:hearts, 4),
          Card.new(:clubs, 5),
          Card.new(:diamonds, 6)
        ]
        second_hand_cards = [
          Card.new(:clubs, 3),
          Card.new(:spades, 4),
          Card.new(:hearts, 5),
          Card.new(:clubs, 6),
          Card.new(:diamonds, 7)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than a straight" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:spades, 3),
          Card.new(:hearts, 4),
          Card.new(:clubs, 5),
          Card.new(:diamonds, 6)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:clubs, 3),
          Card.new(:clubs, 10),
          Card.new(:clubs, 11),
          Card.new(:clubs, 5)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has a flush" do
      it "should return 1 if current_hand has a flush and other_hand has a straight" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:clubs, 11),
          Card.new(:clubs, 9),
          Card.new(:clubs, 8),
          Card.new(:clubs, 7)
        ]
        second_hand_cards = [
          Card.new(:clubs, 10),
          Card.new(:diamonds, 9),
          Card.new(:spades, 8),
          Card.new(:hearts, 7),
          Card.new(:clubs, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has a flush and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:clubs, 3),
          Card.new(:clubs, 4),
          Card.new(:clubs, 5),
          Card.new(:clubs, 6)
        ]
        second_hand_cards = [
          Card.new(:spades, 2),
          Card.new(:spades, 3),
          Card.new(:spades, 4),
          Card.new(:spades, 5),
          Card.new(:spades, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end

      it "should return 1 if other_hand also has a flush, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:clubs, 3),
          Card.new(:clubs, 4),
          Card.new(:clubs, 5),
          Card.new(:clubs, 12)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:clubs, 9),
          Card.new(:clubs, 4),
          Card.new(:clubs, 10),
          Card.new(:clubs, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has flush, but other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:clubs, 7),
          Card.new(:clubs, 4),
          Card.new(:clubs, 9),
          Card.new(:clubs, 6)
        ]
        second_hand_cards = [
          Card.new(:spades, 2),
          Card.new(:spades, 7),
          Card.new(:spades, 4),
          Card.new(:spades, 10),
          Card.new(:spades, 6)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than a flush" do
        first_hand_cards = [
          Card.new(:spades, 2),
          Card.new(:spades, 7),
          Card.new(:spades, 4),
          Card.new(:spades, 10),
          Card.new(:spades, 6)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 8),
          Card.new(:diamonds, 8)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has a full house" do
      it "should return 1 if current_hand has a full house and other_hand has a flush" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 9),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 2),
          Card.new(:clubs, 11),
          Card.new(:clubs, 9),
          Card.new(:clubs, 8),
          Card.new(:clubs, 7)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has a full house and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 9),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 9),
          Card.new(:spades, 9)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end

      it "should return 1 if other_hand also has a full house, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 10),
          Card.new(:spades, 10)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 9),
          Card.new(:spades, 9)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has full house, but other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 9),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 10),
          Card.new(:spades, 10)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than a full house" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 9),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:diamonds, 8)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has four of a kind" do
      it "should return 1 if current_hand has a four of a kind and other_hand has a full house" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 9),
          Card.new(:spades, 9)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has four of a kind and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 9)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end

      it "should return 1 if other_hand also has four of a kind, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 10)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 9)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has four of a kind, but other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 10)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than four of a kind" do
        first_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 9)
        ]
        second_hand_cards = [
          Card.new(:clubs, 6),
          Card.new(:clubs, 7),
          Card.new(:clubs, 9),
          Card.new(:clubs, 10),
          Card.new(:clubs, 8)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has straight flush" do
      it "should return 1 if current_hand has a straight flush and other_hand has a four of a kind" do
        first_hand_cards = [
          Card.new(:clubs, 6),
          Card.new(:clubs, 7),
          Card.new(:clubs, 8),
          Card.new(:clubs, 9),
          Card.new(:clubs, 10)
        ]
        second_hand_cards = [
          Card.new(:clubs, 7),
          Card.new(:spades, 7),
          Card.new(:diamonds, 7),
          Card.new(:clubs, 7),
          Card.new(:spades, 9)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has straight flush and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 6),
          Card.new(:clubs, 7),
          Card.new(:clubs, 8),
          Card.new(:clubs, 9),
          Card.new(:clubs, 10)
        ]
        second_hand_cards = [
          Card.new(:spades, 6),
          Card.new(:spades, 7),
          Card.new(:spades, 8),
          Card.new(:spades, 9),
          Card.new(:spades, 10)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end

      it "should return 1 if other_hand also has straight flush, but current_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 6),
          Card.new(:clubs, 7),
          Card.new(:clubs, 8),
          Card.new(:clubs, 9),
          Card.new(:clubs, 5)
        ]
        second_hand_cards = [
          Card.new(:spades, 6),
          Card.new(:spades, 7),
          Card.new(:spades, 5),
          Card.new(:spades, 4),
          Card.new(:spades, 3)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return -1 if other_hand also has straight flush, but other_hand has highest card" do
        first_hand_cards = [
          Card.new(:clubs, 6),
          Card.new(:clubs, 7),
          Card.new(:clubs, 8),
          Card.new(:clubs, 9),
          Card.new(:clubs, 5)
        ]
        second_hand_cards = [
          Card.new(:spades, 6),
          Card.new(:spades, 7),
          Card.new(:spades, 8),
          Card.new(:spades, 9),
          Card.new(:spades, 10)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end

      it "should return -1 if other_hand has a hand greater than straight flush" do
        first_hand_cards = [
          Card.new(:clubs, 11),
          Card.new(:clubs, 7),
          Card.new(:clubs, 8),
          Card.new(:clubs, 9),
          Card.new(:clubs, 10)
        ]
        second_hand_cards = [
          Card.new(:spades, 14),
          Card.new(:spades, 13),
          Card.new(:spades, 12),
          Card.new(:spades, 11),
          Card.new(:spades, 10)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(-1)
      end
    end

    describe "when current_hand has royal flush" do
      it "should return 1 if current_hand has a royal flush and other_hand has straight flush" do
        first_hand_cards = [
          Card.new(:clubs, 10),
          Card.new(:clubs, 11),
          Card.new(:clubs, 12),
          Card.new(:clubs, 13),
          Card.new(:clubs, 14)
        ]
        second_hand_cards = [
          Card.new(:clubs, 6),
          Card.new(:clubs, 7),
          Card.new(:clubs, 8),
          Card.new(:clubs, 9),
          Card.new(:clubs, 10)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(1)
      end

      it "should return 0 if other_hand also has royal flush and both have same high card" do
        first_hand_cards = [
          Card.new(:clubs, 10),
          Card.new(:clubs, 11),
          Card.new(:clubs, 12),
          Card.new(:clubs, 13),
          Card.new(:clubs, 14)
        ]
        second_hand_cards = [
          Card.new(:spades, 10),
          Card.new(:spades, 11),
          Card.new(:spades, 12),
          Card.new(:spades, 13),
          Card.new(:spades, 14)
        ]

        hand1 = Hand.new(first_hand_cards)
        hand2 = Hand.new(second_hand_cards)

        expect(hand1 <=> hand2).to eq(0)
      end
    end
  end
  
  


  # describe "#trade" do 
  #   it "should " 
  # end

  # describe "#to_s" do

  #   it "should print out hand"
  # end

  # describe "#sort!" do
  #   it "should sort 5 cards in order" do
      
  #   end
  # end

  # describe "#take_cards" do
  # end

  # describe "#discard_cards" do
  # end

  # describe "#value" do
  #   it do
  #   end
  # end
end