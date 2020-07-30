require_relative  "card"

class Board
  def initialize
    @grid = generate_grid
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

  def render
    print "0 1 2 3"
    @grid.each_with_index do |row, index|
      print index
      puts row.join(" ")
    end
  end

  def won?
    
  end

  private 

  # generate letter pairs. Iterate over letters array, shove each letter into accumulator twice
  # take ordered list and make shuffled pairs )array.shuffle)
  # iterate over entire grid
  # for each coordinate, pop off or shift one element from shuffled pairs array and place it in grid at coordinate. 
  # return grid

  def shuffled_pairs(number_of_pairs)
    number_of_pairs = 8
    cards = []
    values = ("A".."Z").to_a
    letter_pairs = []

    values.each do |letter|
      letter_pairs << letter * 2
      letter_pairs
    end
    letter_pairs
  end

  def generate_grid 

  
    # grid = Array.new(4) { Array.new(4, " ")}

    # grid.each_with_index do |row, index|
    #   pairs = []
    #   shuffled_pairs.pop
    # end
    # pairs.shuffle

    # return @grid
  end

end
# board = Board.new
# board.update_cards
