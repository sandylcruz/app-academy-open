require_relative '../piece.rb'
require_relative 'slideable'

class Queen < Piece
  include Slideable
  
  def symbol
    '♛'.colorize(color)
  end

  protected
  
  def move_directions
    accumulator = []

    Slideable::HORIZONTAL_DIRS.each_with_index do |horizontal_direction, index|
      accumulator << horizontal_direction
      accumulator << Slideable::DIAGONAL_DIRS[index]
    end

    accumulator
  end
end