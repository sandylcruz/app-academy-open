require_relative './deck.rb'
require_relative './player.rb'
class Game
  def initialize
    @deck = Deck.new
    @turn = current_player
    @pot_amount = 0
  end

  def play
    play_round until game_over?
  
    end
  end

  def play_round
    deal_cards
    take_bet
    trade_cards
    deal_cards
    take_bet
    end_round
  end

  def deal_cards
  end

  def take_bet
  end

  def trade_card
    #show player's hand
    puts "Do you want to trade any cards? yes or no"
    answer = gets.chomp.downcase

    if answer == "yes"
      puts "Which cards would you like to trade? 0, 1, 2, 3, 4?"
      answer = gets.chomp
      card_indices = answer.split(", ").map(&:to_i)
      
      number_to_trade = card_indices.length
      new_cards = @deck.take_cards(number_to_trade)
      players_hand = @player.hand
      players_hand.trade_card
      #player will maintain instnace of hand
      #after access to player, get access to hand
      #once access to hand, can call trade_cards on it
      #will need to take in card_indices and new_cards
      #access to the hand? trade cards will accept indices
      #parse 1-5 input into array of numbers
      #show player's hand
    end
  end

  def round_over?
  end

  def game_over?
  end

  def take_turn
    if current_player == player1
      current_player == player2
    end
  end

  def end_round
  end

  def discard_card
    if 
    end
  end
end
