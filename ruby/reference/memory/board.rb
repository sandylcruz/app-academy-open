# require_relative  "card.rb"
# require_relative  "game.rb"

class Board
  def initialize
    @grid = generate_grid
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

  def hide(position)
  end

  def revealed?(position)
  end

  def reveal(position)
    
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

  def generate_grid 
    number_of_pairs = 8
    values = ("A".."Z").shuffle
    letter_pairs = []

    letters.each do |letter|
      letter_pairs << letter * 2
      
    end
    letter_pairs
  
    grid = Array.new(4) { Array.new(4, " ")}

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
