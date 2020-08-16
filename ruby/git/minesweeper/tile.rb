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

  def render(is_cursor)
    if @revealed
      if @is_bomb
        if is_cursor
          print "X".red.on_white
        else
          print "X".colorize(:red)
        end
      else
        if is_cursor
          print @bomb_count.to_s.colorize(:orange)
        else
          print @bomb_count.to_s.colorize(:green)
        end
      end
    else
      if is_cursor
        print "-".green.on_white
      else
        print "-".colorize(:blue)
      end
    end
  end
end
