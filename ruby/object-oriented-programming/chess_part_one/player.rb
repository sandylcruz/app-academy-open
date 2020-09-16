require_relative "./display.rb"

class Player
  attr_reader :color, :name
  
  def initialize(color, display, name)
    @color = color
    @display = display
    @name = name
  end

  def make_move(board)
    start_pos, end_pos = nil, nil

    until start_pos && end_pos
      @display.render

      if start_pos
        puts "#{color}'s turn. Move to where?"
        end_pos = @display.cursor.get_input(self)

        # @display.reset! if end_pos
      else
        puts "#{color}'s turn. Move from where?"
        start_pos = @display.cursor.get_input(self)

        # @display.reset! if start_pos
      end
    end

    coordinate = [start_pos, end_pos]
    puts coordinate
    coordinate
  end
  
end