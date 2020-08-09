class Board

  def initialize
    @grid = Array.new(9) { Array.new(9, "_") }
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
    end
  end

end
board = Board.new
board.print