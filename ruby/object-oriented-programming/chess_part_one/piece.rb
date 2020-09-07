class Piece
  attr_reader :color, :board, :position

  def initialize(board, color = :none)
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
    moves
  end

  def pos=(value)
    @position = value
  end

  def symbol
  end

  private

  def move_into_check?(end_position)
  end
end