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
    @grid = Board::create_grid(n)
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
