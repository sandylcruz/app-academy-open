require 'io/console'

class Cursor
  attr_reader :board, :cursor_position, :selected, :sub_cursor_position

  KEYMAP = {
    " " => :space,
    "h" => :left,
    "j" => :down,
    "k" => :up,
    "l" => :right,
    "w" => :up,
    "a" => :left,
    "s" => :down,
    "d" => :right,
    "\t" => :tab,
    "\r" => :return,
    "\n" => :newline,
    "\e" => :escape,
    "\e[A" => :up,
    "\e[B" => :down,
    "\e[C" => :right,
    "\e[D" => :left,
    "\177" => :backspace,
    "\004" => :delete,
    "\u0003" => :ctrl_c,
  }.freeze

    MOVES = {
    left: [0, -1],
    right: [0, 1],
    up: [-1, 0],
    down: [1, 0]
  }.freeze

  def initialize(cursor_position, board)
    @board = board
    @cursor_position = cursor_position
    @selected = false
    @sub_cursor_position = nil
  end

  def get_input(current_player)
    input = STDIN.getch
    exit(0) if input == "\u0003"
    handle_key(input, current_player)
  end

  def toggle_selected(current_player)
    return if @board.empty?(@cursor_position)

    current_piece = @board[@cursor_position]
    current_player_color = current_player.color
    current_piece_color = current_piece.color

    if current_player_color == current_piece_color
      valid_moves = current_piece.valid_moves
      if !valid_moves.empty?
        @selected = !@selected
        if @selected
          @sub_cursor_position = valid_moves.first
        else
          @sub_cursor_position = nil
        end
      end
    end
  end

  private

  def handle_key(key, current_player)
    return handle_sub_cursor_key(key, current_player) unless @sub_cursor_position.nil?
    
    case KEYMAP[key]
    when :left
      i, j = @cursor_position
      new_j = [0, j - 1].max
      @cursor_position = [i, new_j]
    when :up
      i, j = @cursor_position
      new_i = [0, i - 1].max
      @cursor_position = [new_i, j]
    when :right
      i, j = @cursor_position
      new_j = [7, j + 1].min
      @cursor_position = [i, new_j]
    when :down
      i, j = @cursor_position
      new_i = [i + 1, 7].min
      @cursor_position = [new_i, j]
    when :space, :return
      toggle_selected(current_player)
      @cursor_position
    when :ctrl_c
      Process.exit(0)
    end
  end

  def handle_sub_cursor_key(key, current_player)
    case KEYMAP[key]
    when :left
      current_piece = @board[@cursor_position]
      valid_moves = current_piece.valid_moves
      current_piece_index = valid_moves.find_index(@sub_cursor_position)
      next_piece_index = (current_piece_index - 1) % valid_moves.length
      @sub_cursor_position = valid_moves[next_piece_index]
    when :right
      current_piece = @board[@cursor_position]
      valid_moves = current_piece.valid_moves
      current_piece_index = valid_moves.find_index(@sub_cursor_position)
      next_piece_index = (current_piece_index + 1) % valid_moves.length
      @sub_cursor_position = valid_moves[next_piece_index]
    when :return
      @board.move_piece!(current_player, @sub_cursor_position)
    end
  end
  
  def update_position(diff)
    new_position = [@cursor_position[0] + diff[0], @cursor_position[1] + diff[1]]
    if @board.valid_position?(new_position)
      @cursor_position = new_position
    end
  end
end

