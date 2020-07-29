require_relative  "card.rb", "game.rb"

class Board
  def initialize(num)
    @grid = Array.new(num) { Array.new(num, " ")}
  end

  def update_cards
    puts "Updating the cards..."
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

  def reveal(position)
    
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
    end
  end

  def populate
  end

  def render
  end

  def won?
  end

end
# board = Board.new
# board.update_cards
