# require_relative './pieces/null_piece.rb'

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
    moves.select do |end_position|
      !move_into_check?(end_position)
    end
  end

  def pos=(value)
    @position = value
  end

  def symbol
  end

  def dup
    # if self == NullPiece.instance
    #   return self
    # end

    klass = self.class #class of the instance
    new_piece = klass.new(@board, @color) 
    new_piece.pos = @position.dup
    new_piece
  end

  private

  def move_into_check?(end_position)
    duped_board = @board.dup
    duped_board.move_piece!(@color, position, end_position)
    duped_board.in_check?(@color)
  end
end
# piece = Piece.new({}, :black)
# piece.pos = [1, 2]
# new_piece = piece.dup
# puts piece == new_piece
# puts new_piece.position
# puts piece.position.object_id === new_piece.position.object_id
