require 'colorize'

class Tile
  attr_reader :value

  def initialize(is_bomb, revealed)
    @is_bomb = is_bomb
    @revealed = revealed
  end
  
  def [](position)
  end

  def []=(value)
  end

  def reveal
    @revealed = true
  end

  def flag_tile_as_bomb

  end

  def neighbors
  end

  def neighbor_bomb_count
  end

  def print
  end

  def inspect
  end

  def to_s
    if @revealed
      "O"
    else
      "-"
    end
  end

  # def as_cursor_string
  #   if @given
  #     "#{@value}".light_green.on_white
  #   else
  #     if @value == 0
  #       "x".green.on_white
  #     else
  #       "#{@value}".green.on_white
  #     end
  #   end
  # end

  # def mark_number(number)
  #   unless @given
  #     @value = number
  #   end
  # end

end
