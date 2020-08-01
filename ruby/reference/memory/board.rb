require_relative  "card"

class Board
  attr_reader :grid

  def initialize
    @grid = initialize_grid
  end

  def render
    puts "  0 1 2 3\n"
    @grid.each_with_index do |row, index|
      puts "#{index} #{row.join(" ")}\n" 
    end
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

  def hide(position)

  end

  def revealed?(position)
  end

  def reveal(position)
    if revealed?(position)
      puts "is revealed"
    else
      puts "is not revealed"
    end
  end

  def won?
    
  end

  private 

  def generate_letter_pairs
    number_of_pairs = 8
    cards = []
    values = ("A".."Z").to_a

    8.times do
      random_letter = values.sample
      cards << random_letter + random_letter
    end
    cards.map(&:chars).flatten.shuffle
  end

  def initialize_grid
    grid = Array.new(4) { Array.new(4, " ")}
    letters = generate_letter_pairs
  
    grid.each_with_index do |row, i|
      row.each_with_index do |element, j|
        letter = letters.pop
        grid[i][j] = letter
      end
    end
      
    grid
  end

end
board = Board.new
board.render
