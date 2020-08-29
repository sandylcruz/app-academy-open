require 'colorize'
require_relative "board"

class Display
  attr_reader :board
  attr_reader :cursor

  def initialize(board)
    @board = board
    @cursor = cursor
  end

  def render
    @board.rows.each_with_index do |row, row_index|
      row_string = " "
      row.each_with_index do |cell, cell_index|
        if row_index.even? && cell_index.even? || row_index.odd? && cell_index.odd?
          row_string += "  ".on_red
        elsif row_index.even? && cell_index.odd? || row_index.odd? && cell_index.even?
          row_string += "  ".on_blue
        end
      end
      puts row_string
    end
  end
end