require_relative './deck.rb'

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
  end

  def round_over?
  end

  def game_over?
  end

  def switch_turn
  end

  def end_round
  end

  def discard_card
  end

  def fold
  end

  def see
  end

  def raise
  end
end
