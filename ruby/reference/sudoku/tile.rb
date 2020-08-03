require 'colorize'
class Tile
  attr_reader :value

  def initialize(value, given)
    @value = value
    @given = given
  end

  def [](position)
    row = position[0]
    column = position[1]
    @grid[row][column]
  end

  def []=(value)
    row = position[0]
    column = position[1]
    @grid[row][column] = value
  end
  
  def to_s
    if @given
      "#{@value}".blue
    else
      if @value == 0
        "x"
      else
        "#{@value}".white
      end
    end
  end

  def as_cursor_string
    if @given
      "#{@value}".light_green.on_white
    else
      if @value == 0
        "x".green.on_white
      else
        "#{@value}".green.on_white
      end
    end
  end
end