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
    card = self[position]
    card.hide
  end

  def revealed?(position)
    card = self[position]
    card.revealed?
  end

  def reveal(position)
    card = self[position]
    card.reveal
  end

  def won?
    @grid.all? do |row|
      row.all? do |card|
        card.revealed?
      end
    end
  end

  private 

  def generate_letter_pairs
    letters = []

    ("A".."H").each do |letter|
      letters << letter
      letters << letter
    end

    letters.shuffle
  end

  def initialize_grid
    grid = Array.new(4) { Array.new(4, " ")}
    letters = generate_letter_pairs
  
    grid.each_with_index do |row, i|
      row.each_with_index do |element, j|
        letter = letters.pop
        grid[i][j] = Card.new(letter)
      end
    end

    print grid
      
    grid
  end
end
