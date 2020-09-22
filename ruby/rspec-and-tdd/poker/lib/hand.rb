require './card.rb'

class Hand
  def trade_cards
  end

  def to_s
  end

  def royal_flush?
  end

  def straight_flush?
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
  end

  def straight?
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def pair?
  end

  def high_card?
    @cards.sort[-1]
  end

  def winning_hand?
  end
end