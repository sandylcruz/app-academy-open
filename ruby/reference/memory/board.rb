require_relative  "card"

class Board
  def initialize
    @grid = Array.new(4) { Array.new(4, " ")}
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

  def shuffled_pairs
    number_of_pairs = 8
    cards = []
    values = ("A".."Z").to_a
    puts values
    letter_pairs = []

    while number_of_pairs < letter_pairs.length
      letter_pairs = values + values
    end
    print letter_pairs
  end

  def generate_pair
    random_row = rand(0...4)
    random_column = rand(0...4)
    random_coordinate_pair = [random_row, random_column]
    random_coordinate_pair
    
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
