class Board
  
  attr_reader :size

  def self.create_grid(n)
    outer_array = []

    n.times do
      inner_array = []
      n.times do
        inner_array << :N
      end
      outer_array << inner_array
    end
    outer_array
  end

  def initialize(n)
    @grid = Board.create_grid(n) #array of arrays
    @size = n * n
  end

  def [](coordinate_pair) #1D array
    row_index = coordinate_pair[0] #index number
    column_index = coordinate_pair[1] #number
    # @grid[row_index][column_index] #returns item from 2d array
    row = @grid[row_index]
    return row[column_index]
  end

  def []=(coordinate_pair, new_value)
    row_index = coordinate_pair[0] #index to represent row at the index
    column_index = coordinate_pair[1]
    # @grid[row_index][column_index] = new_value
    
    row = @grid[row_index]
    row[column_index] = new_value

  end

  def num_ships
    count = 0
    @grid.each do |row|
      row.each do |ele|
        if ele == :S
          count += 1
        end
      end
    end
    count

  end

  def attack(position)
    Board.[]
    Board.[]=
  end

  def place_random_ships
  end

  def hidden_ships_grid
    ship_array = []
    ships_array
  end

  def self.print_grid(array)
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end


end
