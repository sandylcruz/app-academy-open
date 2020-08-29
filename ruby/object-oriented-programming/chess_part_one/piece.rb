class Piece
  def initialize
    @color = symbol
    @board = board
    @position = []
  end

  def to_s
  end

  def empty?
  end

  def valid_moves
  end

  def pos=(value)
  end

  def symbol
  end

  private

  def move_into_check?(end_position)
  end
end