require_relative 'tile.rb'

class Board
  def initialize(grid)
    @grid = grid
    @cursor_position = [5, 3]
  end
  #read file
  #take contents, map contents into 2d grid of tile instances
  def self.from_file #factory method. class method that will return instance of own class
    file = File.open("./puzzles/sudoku1.txt")
    lines = file.readlines.map(&:chomp)
    grid = []

    lines.each do |line|
      row = []

      line.each_char do |char|
        value = char.to_i
        given = value > 0
        tile = Tile.new(value, given)
        row << tile
      end

      grid << row
    end

    board = Board.new(grid)
    board
  end

  def render
    system("clear")

    @grid.each_with_index do |row, x|
      row.each_with_index do |tile, y|
        current_position = [x, y]
        cursor_position_equals_current_position = current_position == @cursor_position
        if cursor_position_equals_current_position
          print tile.as_cursor_string
        else
          print tile
        end

        if y < row.length - 1
          print ' '
        end
      end
      print "\n"
    end
  end

  def move_left!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if j == 0
    @cursor_position = [i, j - 1]
  end

  def move_right!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if j == 8
    @cursor_position = [i, j + 1]
  end

  def move_up!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if i == 0
    @cursor_position = [i - 1, j]
  end

  def move_down!
    i = @cursor_position[0]
    j = @cursor_position[1]

    return if i == 8
    @cursor_position = [i + 1, j]
  end

  def row_solved?(row_number)
    number_range = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    row = @grid[row_number] #array of tiles
    
    number_array = row.map do |tile|
      tile.value
    end
    
    number_array.sort == number_range.sort
  end

  def column_solved?(column_number)
    number_range = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    column = @grid.map { |row| row[column_number]}
  
    number_array = column.map do |tile|
      tile.value
    end
    
    number_array.sort == number_range.sort
  end
  
  def row
    @grid
  end

  def columns
    @grid.transpose
  end

  def square(index1, index2)
    numbers = []

    (index1...index1 + 3).each do |i|
      (index2...index2 + 3).each do |j|
        tile = @grid[i][j]
        numbers << tile.value
      end
    end
    numbers
  end

  def square_solved?(coordinate_pair)
    index1 = coordinate_pair[0]
    index2 = coordinate_pair[1]
    number_range = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    numbers_in_square = square(index1, index2)
    numbers_in_square.sort == number_range
  end

  def square_starting_positions 

    #return array of array of numbers
    #return top left corner of each one
  end

  def all_solved?
    (0..8).all? { |row_number| row_solved?(row_number) } &&
    (0..8).all? { |column_number| column_solved?(column_number) } &&
    square_starting_positions.all? { |coordinate_pair| square_solved?(coordinate_pair)}
  end

  def mark_number(coordinate_pair)
    index1 = coordinate_pair[0].to_i
    index2 = coordinate_pair[1].to_i
    tile = @grid[index1][index2]
    tile.mark_number(index1, index2)
  end

end
board = Board.from_file

