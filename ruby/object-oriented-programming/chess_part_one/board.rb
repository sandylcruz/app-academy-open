require 'colorize'
require './pieces/null_piece.rb'
require './pieces/bishop.rb'
require './pieces/king.rb'
require './pieces/knight.rb'
require './pieces/null_piece.rb'
require './pieces/pawn.rb'
require './pieces/queen.rb'
require './pieces/rook.rb'

class Board
  attr_reader :rows
  attr_reader :sentinel

  def initialize
    @sentinel = NullPiece.instance
    @rows = Array.new(8) { Array.new(8) { @sentinel } }  
    add_piece(Rook.new(self, :black), [0, 0])
    add_piece(Knight.new(self, :black), [0, 1])
    add_piece(Bishop.new(self, :black), [0, 2])
    add_piece(Queen.new(self, :black), [0, 3])
    add_piece(King.new(self, :black), [4, 4])
    # add_piece(King.new(self, :black), [0, 4])
    add_piece(King.new(self, :black), [0, 1])
    add_piece(Bishop.new(self, :black), [0, 5])
    add_piece(Knight.new(self, :black), [0, 6])
    add_piece(Rook.new(self, :black), [0, 7])
    (0..7).each do |num|
      add_piece(Pawn.new(self, :black), [1, num])
      add_piece(Pawn.new(self, :white), [6, num])
    end
    add_piece(Rook.new(self, :white), [7, 0])
    add_piece(Knight.new(self, :white), [7, 1])
    add_piece(Bishop.new(self, :white), [7, 2])
    add_piece(Queen.new(self, :white), [7, 3])
    add_piece(King.new(self, :white), [7, 4])
    add_piece(Bishop.new(self, :white), [7, 5])
    add_piece(Knight.new(self, :white), [7, 6])
    add_piece(Rook.new(self, :white), [7, 7])
  end

  def [](position)
    row = position[0]
    column = position[1]
    @rows[row][column]
  end

  def []=(position, value)
    row = position[0]
    column = position[1]
    @rows[row][column] = value
  end

  def move_piece(color, start_position, end_position)
    raise "Invalid position" unless valid_position?(start_position) && valid_position?(end_position)
    piece = self.[](start_position)
    raise "There is no piece at start position" if piece == NullPiece
    raise "Piece cannot move that way" if !piece.valid_moves.include?(end_position)

    self[end_position] = piece
    self[start_position] = @sentinel
    piece.pos = end_position

    move_piece!(color, start_position, end_position) 
  end

  def move_piece!(color, start_position, end_position)
    raise "Invalid position" unless valid_position?(start_position) && valid_position?(end_position)
    piece = self[start_position]
    raise "There is no piece at start position" if piece == NullPiece
   
    self[end_position] = piece
    self[start_position] = NullPiece.instance
    piece.pos = end_position
  end

  def valid_position?(position)
    x, y = position
    x.between?(0, 7) && y.between?(0, 7)
  end

  def add_piece(piece, position)
    self[position] = piece
    piece.pos = position
  end

  def empty?(position)
    self[position] == NullPiece.instance
  end

  def get_pieces_for_color(color)
    accumulator = []
    @rows.each do |row|
      row.each do |piece|
        if piece.color == color
          accumulator << piece
        end
      end
    end
    accumulator
  end

  def in_check?(color)
    king_position = find_king(color).position
    opposing_color = color == :black ? :white : :black
    opposing_pieces = get_pieces_for_color(opposing_color)

    opposing_pieces.any? do |opposing_piece|
      opposing_piece.moves.any? do |move|
        move == king_position
      end
    end
  end

  def checkmate?(color)
    if in_check?(color) && !valid_moves(position)
    end
  end

  def find_king(color)
    @rows.each do |row|
      row.each do |piece|
        is_king = piece.instance_of?(King)
        is_opposite_color = color != :color
        if is_king && is_opposite_color
          return piece
        end
      end
    end
  end

  def pieces
  end

  def dup
    new_board = Board.new
    @rows.each do |row|
      row.each do |piece|
        unless piece == NullPiece.instance
          new_piece = piece.dup
          new_position = new_piece.position
          new_board.add_piece(new_piece, new_position)
        end
      end
    end
    new_board
  end

end