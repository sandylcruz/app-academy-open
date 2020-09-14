require 'colorize'
require_relative './cursor.rb' 
require_relative './board.rb'

class Display
  attr_reader :board
  attr_reader :cursor

  def initialize(board, game)
    @board = board
    @game = game
    @cursor = Cursor.new([0, 0], board)
    @show_debug_info = false
  end

  def render(possible_moves = [])
    system("clear")

    puts "Current Player: #{@game.current_player.name}"

    positions_to_highlight = []

    if @cursor.selected
      positions_to_highlight = possible_moves
    end
    
    @board.rows.each_with_index do |row, row_index|
      row_string = ""
      row.each_with_index do |piece, cell_index|
        if @cursor.cursor_position == [row_index, cell_index]
          if @cursor.selected
            row_string += " #{piece} ".on_red
          else
            row_string += " #{piece} ".on_green
          end
        elsif row_index.even? && cell_index.even? || row_index.odd? && cell_index.odd?
          row_string += " #{piece} ".on_red
        elsif row_index.even? && cell_index.odd? || row_index.odd? && cell_index.even?
          row_string += " #{piece} ".on_blue
        end
      end
      puts row_string
    end
  end
end