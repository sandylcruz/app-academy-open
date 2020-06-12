class Board
  
  attr_reader :size

  def initialize(n)
    @grid = [[:N]]
    @size = n * n
  end

  def [](array)
    @grid[i]
  end

  def []=(position)
    @grid[i] == grid[position]
  end

  def num_ships
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
