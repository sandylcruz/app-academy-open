class Board
  def initialize
    @board = board
    @rows = []
  end

  def [](position)
  end

  def []=(position, value)
  end

  def move_piece(color, start_position, end_position)
  end

  def valid_position?(position)
  end

  def add_piece(piece, position)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_position, end_position)
  end
end