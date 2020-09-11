require 'io/console'

class Cursor
  attr_reader :board, :cursor_position, :selected

  def initialize(cursor_position, board)
    @board = board
    @cursor_position = cursor_position
    @selected = false
  end

  def get_input
    input = STDIN.getch
    exit(0) if input == "\u0003"
    handle_key(input)
    input
  end

  def toggle_selected
    @selected = !@selected
  end

  private

  def handle_key(key)
    case key
    when "a"
      i, j = @cursor_position
      new_j = [0, j - 1].max
      @cursor_position = [i, new_j]
    when "w"
      i, j = @cursor_position
      new_i = [0, i - 1].max
      @cursor_position = [new_i, j]
    when "d"
      i, j = @cursor_position
      new_j = [7, j + 1].min
      @cursor_position = [i, new_j]
    when "s"
      i, j = @cursor_position
      new_i = [i + 1, 7].min
      @cursor_position = [new_i, j]
    when :space || :return
      print @cursor_position
    end
  end
  
  def update_position(diff)
  end
end

