require 'singleton'
require_relative '../piece.rb'

class NullPiece < Piece
  include Singleton
  
  def initialize
    @symbol = " "
    @color = :none
  end

  def moves
    []
  end

  def symbol
    " "
  end
end