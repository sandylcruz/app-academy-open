require 'colorize'
require_relative 'board.rb'

class Tile
  attr_reader :value, :is_bomb

  def initialize(is_bomb, revealed)
    @is_bomb = is_bomb
    @revealed = revealed
  end

  def set_individual_tile_bomb_count
    @bomb_count = 0
  end

  def set_all_neighbor_bomb_count!(grid)
    grid.each do |row|
      row.each do |tile|
        if !tile.is_bomb
          number_of_neighbor_bombs = @board.neighbor_bomb_count(index1, index2)
          set_individual_tile_bomb_count
        end
      end
    end
  end

  def reveal!
    @revealed = true
  end

  def flag_tile_as_bomb!
    @is_bomb = true
  end

  def render
  end

  def inspect
  end

  def to_s
    #if neighbor_bomb_count == 0, do not display 0
    if @revealed
      if @is_bomb
        "X".colorize(:red)
      else
        "O".colorize(:green)
      end
    else
      "-".colorize(:blue)
    end
  end

  def as_cursor_string
    if @revealed
      "#{@value}".light_green.on_white
    else
      if @value == 0
        "x".green.on_white
      else
        "#{@value}".green.on_white
      end
    end
  end

  # def place_mark
  #   unless @is_bomb
  #     "X"
  #   end
  # end

end
