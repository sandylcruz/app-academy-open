require 'colorize'
require_relative './cursor.rb'

class Display
  attr_reader :board
  attr_reader :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def render
    system("clear")

    @board.rows.each_with_index do |row, row_index|
      row_string = ""
      row.each_with_index do |piece, cell_index|
        if @cursor.cursor_position == [row_index, cell_index]
          row_string += " #{piece} ".on_green
        elsif row_index.even? && cell_index.even? || row_index.odd? && cell_index.odd?
          row_string += " #{piece} ".on_white
        elsif row_index.even? && cell_index.odd? || row_index.odd? && cell_index.even?
          row_string += " #{piece} ".on_blue
        end
      end
      puts row_string
    end
  end
end