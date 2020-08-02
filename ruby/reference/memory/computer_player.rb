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
    known_card[position] = value
  end

  def receive_match(position1, position2)
    @matched_cards[position1] = true
    @matched_cards[position2] = true
  end

  def get_input
    if previous_guess
      second_guess
    else
      first_guess
    end
  end

  def to_s
    "Computer"
  end
end