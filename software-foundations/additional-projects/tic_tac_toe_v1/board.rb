require './invalid_position_error.rb'

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
    raise InvalidPositionError if !valid?(position) || !empty?(position)
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

    while i < width
      column = []
      j = 0
      while j < height
        value = @grid[j][i]
        column << value
        j += 1
      end
      return true if column.all? { |ele| ele == mark }
      i += 1
    end

    return false
  end

  def win_diagonal?(mark)
    width = @grid.length
    first_diagonal = []
    second_diagonal = []
    i = 0

    while i < width
      diagonal_ele = @grid[i][i]
      first_diagonal << diagonal_ele
      i += 1
    end
    return true if first_diagonal.all? { |ele| ele == mark }

    i = 0
    while i < width
      diagonal_ele = @grid[i][2 - i]
      second_diagonal << diagonal_ele
      i += 1
    end

    second_diagonal.all? { |ele| ele == mark }
  end

  def win?(mark)
    if win_row?(mark) || win_col?(mark) || win_diagonal?(mark)
      return true
    else
      return false
    end
  end

  def empty_positions?
    row = @grid.length
    column = @grid[0].length

    @grid.any? do |row|
      row.any? do |ele|
        ele == "_"
      end
    end
  end

end

# b = Board.new

# b.place_mark([0, 0], :X)
# b.place_mark([0, 1], :X)
# b.place_mark([0, 2], :X)
# b.place_mark([1, 0], :X)
# b.place_mark([1, 1], :X)
# b.place_mark([1, 2], :X)
# b.place_mark([2, 0], :X)
# b.place_mark([2, 1], :X)
# b.place_mark([2, 2], :X)

# b.place_mark([0, 0], :X)
# b.place_mark([1, 0], :X)
# b.place_mark([2, 0], :X)

# puts b.win_col?(:X)
# puts b.win?(:X)

# puts b.empty_positions?
# b.print