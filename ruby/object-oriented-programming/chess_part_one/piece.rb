class Piece
  attr_reader :color, :board, :position

  def initialize(color = :none)
    @color = color
    @board = board
    @position = []
  end

  def to_s
    symbol
  end

  def empty?(position)
    self[position].empty?
  end

  def valid_moves
    move_positions
    
  end

  def pos=(value)
  end

  def symbol
  end

  private

  def move_into_check?(end_position)
  end
end