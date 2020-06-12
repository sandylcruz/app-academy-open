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




end
