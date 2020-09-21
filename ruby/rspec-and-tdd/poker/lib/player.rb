class Player
  def initialize
    @hand = hand
    @pot = pot
  end

  def ask_user
    print "Which card do you wish to discard?"
    discard_card = gets.chomp

    print "Do you want to fold, see, or, raise?"
    answer = gets.chomp

    if answer == "fold"
    elsif answer == "see"
    elsif answer == "raise"
    end
  end

end