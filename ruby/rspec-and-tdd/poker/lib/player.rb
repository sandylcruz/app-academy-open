require_relative './game.rb'

class Player
  def initialize
    @hand = hand
    @current_bet = current_bet
  end

  def ask_user
    print "Which card do you wish to discard?"
    discard_card = gets.chomp

    print "Do you want to fold, see, or, raise?"
    answer = gets.chomp

    if answer == "fold"
      game.fold
    elsif answer == "see"
      game.see
    elsif answer == "raise"
      game.raise
    end
  end

end