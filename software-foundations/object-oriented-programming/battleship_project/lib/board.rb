class Board
  attr_reader :size

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
    @n = n
  end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def []=(position, val)
    row, col = position
    @grid[row][col] = val
  end

  def num_ships
    @grid.flatten.count { |ele| ele == :S }
  end

  def attack(position)
    if self[position] == :S
      puts "you sunk my battleship"
      self[position] = :H
      return true
    else
      self[position] = :X
      return false
    end
  end

  def generate_pair
    random_i = rand(0...@n)
    random_j = rand(0...@n)
    random_coordinate_pair = [random_i, random_j] 
    random_coordinate_pair
  end

  def is_ship?(coordinate_pair)
    ele = self[coordinate_pair]
    ele == :S
  end

  def place_random_ships
    num = (0.25 * @size).to_i

    num.times do
      coordinate_pair = generate_pair
      while is_ship?(coordinate_pair)
        coordinate_pair = generate_pair
      end
      self[coordinate_pair] = :S
    end

    num
  end

  def hidden_ships_grid
    @grid.map do |row|
      row.map do |ele|
        if ele == :S
          :N
        else
          ele
        end
      end
    end
  end

  def self.print_grid(array)
    array.each do |row|
      puts row.join(" ")
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end

end

  # def self.create_grid(n)
  #   outer_array = []

  #   n.times do
  #     inner_array = []
  #     n.times do
  #       inner_array << :N
  #     end
  #     outer_array << inner_array
  #   end
  #   outer_array
  # end

  # def initialize(n)
  #   @grid = Board.create_grid(n) #array of arrays
  #   @size = n * n
  # end

    # def [](coordinate_pair) #1D array
  #   row_index = coordinate_pair[0] #index number
  #   column_index = coordinate_pair[1] #number
  #   # @grid[row_index][column_index] #returns item from 2d array
  #   row = @grid[row_index]
  #   return row[column_index]
  # end

    # def []=(coordinate_pair, new_value)
  #   row_index = coordinate_pair[0] #index to represent row at the index
  #   column_index = coordinate_pair[1]
  #   # @grid[row_index][column_index] = new_value
    
  #   row = @grid[row_index]
  #   row[column_index] = new_value
  # end

  # def num_ships
  #   count = 0
  #   @grid.each do |row|
  #     row.each do |ele|
  #       if ele == :S
  #         count += 1
  #       end
  #     end
  #   end
  #   count
  # end

    # def hidden_ships_grid
  #   ship_array = []

  #   @grid.each do |row|
  #     new_row = []
  #     row.each do |ele|
  #       if ele == :S
  #         new_row << :N
  #       else
  #         new_row << ele
  #       end 
  #     end
  #     ship_array << new_row
  #   end
  #   ship_array
  # end

  # def self.print_grid(array)
  #   array.each do |row|
  #     print row.join(" ")
  #   end
  # end