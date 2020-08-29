require 'board.rb', 'colorize'

class Display
  def initialize(board)
    @board = board
    @cursor = cursor
  end

  def build_grid
    @board.each_with_index do |row|
      build_row(row, index)
    end
  end

  def build_row(row, index)
    row.each_with_index do |piece, index|
      
    end
  end

  def render
    @grid.each_with_index do |row, index|
      row.each_with_index do |column, index|
      #  if index.even?
      #   print "_".blue
      #  else
      #   print "_".red
      #  end
      end
    end
  end
end