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
    raise 'invalid mark' if !valid?(position) || !empty?(position)
    self[position] = mark
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
    end
  end

  def win_row?(mark)
    @grid.any? do |row|
      row.all? { |ele| ele == mark }
    end
  end

  def win_col?(mark)
    height = @grid.length
    width = @grid[0].length
    i = 0
    j = 0

    while i < width
      column = []
      
      while j < height
        value = @grid[i][j]
        column << value
        j += 1
      end

      is_win = column.all? { |ele| ele == mark }
      return true if is_win 
      i += 1
    end

    return false
  end

  def win_diagonal?(mark)
    width = @grid.length
    i = 0

    while i < width
      
      diagonal_1 = [i][i]
      diagonal_2 = [i][2 - i]

      i += 1
    end
  end

  # def win?(mark)
  #   if win_row?(mark) || win_col?(mark) || win_diagonal?(mark)
  #     return true
  #   else
  #     return false
  #   end
  # end

  # def empty_positions?
  # end

end

b = Board.new

b.place_mark([0, 0], :X)
b.place_mark([1, 1], :X)
b.place_mark([2, 2], :X)
puts b.print

puts b.win_col?(:X)