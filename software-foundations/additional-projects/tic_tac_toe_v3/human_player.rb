class HumanPlayer
  attr_reader :mark

  def initialize(mark_value)
    @mark = mark_value
  end

  def get_position(legal_positions)
    puts "Enter a position as two numbers with a space between them:"
    position = gets.chomp.split(" ").map(&:to_i)
    
    if position.length != 2
      raise "Invalid position"
    end
    position
  end
end