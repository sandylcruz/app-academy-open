require 'colorize'

class Tile
  attr_reader :value, :is_bomb, :revealed, :bomb_count

  def initialize(is_bomb, revealed)
    @is_bomb = is_bomb
    @revealed = revealed
  end

  def reveal!
    @revealed = true
  end

  def flag_tile_as_bomb!
    @is_bomb = true
  end

  def set_individual_tile_bomb_count!(count)
    @bomb_count = count
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
        @bomb_count.to_s.colorize(:green)
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
