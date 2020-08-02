require_relative 'board.rb'
require "set"

class ComputerPlayer
  attr_reader :known_cards

  def initialize
    @matched_cards = Set.new
    @known_cards = {}
  end

  def prompt(guess_number)
    guess = nil

    until guess && !@matched_cards.include?(guess)
      winning_match = @known_cards.select do |key, value|
        !value.nil? && value.length == 2
      end

      if !winning_match.empty?
        puts " ta da"
        puts winning_match
        
        winning_key = winning_match.keys.last        
        winning_pairs = winning_match[winning_key]
        guess = winning_pairs[guess_number]
        if guess_number == 1
          @known_cards.delete(winning_key)
        end
        puts guess
        # sleep(5)
      else
        guess = [rand(4), rand(4)]
      end
    end

    guess
  end

  def receive_revealed_card(position, card)
    if !@known_cards[card.face_value]
      @known_cards[card.face_value] = [position]
    else
      pairs = @known_cards[card.face_value]
      unless pairs.include?(position)
        pairs.push(position)
      end
    end
  end

  def receive_match(position1, position2)
    @matched_cards.add(position1)
    @matched_cards.add(position2)
  end

  def to_s
    "Computer"
  end
end