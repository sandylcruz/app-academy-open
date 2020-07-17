class HumanPlayer
  attr_reader :mark

  def initialize(mark_value)
    @mark = mark_value
  end

  def get_position
    puts "Enter a position as two numbers with a space between them:"
    position = gets.chomp.split(" ")
    
    if position.length != 2
      raise "Invalid position"
    end

    print position.map!(&:to_i)
    
  end
end

player_1 = HumanPlayer.new(:X)
puts player_1.mark
player_1.get_position
