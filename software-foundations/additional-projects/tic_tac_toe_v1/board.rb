class Board

  def initialize
    @grid = Array.new(3) { Array.new(3, "_") }
  end

  def valid?(position)
    row = position[0]
    column = position[1]
    maximum_row = 3
    maximum_column = 3

    if row < maximum_row && row >= 0 && column < maximum_column && column >= 0
      return true
    else
      return false
    end
  end

  def empty?(position)
    row = position[0]
    column = position[1]
    value = @grid[row][column]
    value == "_"
  end

  def [](position)
    row = position[0]
    column = position[1]

    @grid[row][column]
  end

  def []=(position, value)
    row = position[0]
    column = position[1]

    @grid[row][column] = value
  end

  def place_mark(position, mark)
    puts valid?(position)
    puts empty?(position)

    raise 'invalid mark' if !valid?(position) || !empty?(position)
    self[position] = mark
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
    end
  end

  def win_row?(mark)
    if @grid[row].all?(mark)
      return true
    else
      return false
    end
  end

  def win_col?(mark)
  end

  def win_diagonal?(mark)
  end

  def win?(mark)
    if win_row?(mark) || win_col?(mark) || win_diagonal?(mark)
      return true
    else
      return false
    end
  end

  def empty_positions?
  end

end