require_relative './deck.rb'

class Game
  def initialize
    @deck = Deck.new
    @turn = current_player
    @pot_amount = 0
  end

  def play
    play_round until game_over?
      #switch turn
      #if fold
      #elsif see
      #elsif raise
    end
  end

  def play_round
    deck
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

  def discard_card
  end

  def fold
  end

  def see
  end

  def raise
  end
end
